#!/bin/sh

if ! bazelisk version > /dev/null; then
    echo Cannot find bazelisk
    echo Please install maven from https://docs.bazel.build/versions/master/install-bazelisk.html
    echo Alternatively use \"sudo apt-get install bazelisk\"
    echo Or \"brew install bazelisk\"
    exit 1
fi

if ! ant -version > /dev/null; then
    echo Cannot find ant
    echo Please install ant from http://ant.apache.org/manual-1.9.x/install.html
    echo Alternatively use \"sudo apt-get install ant\"
    echo Or \"brew install ant\"
    exit 1
fi

dependencies="googlei18n/libphonenumber google/closure-library google/closure-compiler google/closure-linter google/python-gflags"

for dependency in $dependencies; do
    echo 'Checking dependency '$dependency
    dir='../'`echo $dependency | cut -d '/' -f 2`
    if [ -d $dir ]; then
        cd $dir > /dev/null
        git stash
        git checkout master
        git pull
        git checkout -
        git stash pop
        cd - > /dev/null
    else
        git clone https://github.com/$dependency $dir --depth 1
    fi
done

cd ../closure-compiler; bazelisk build //:compiler_unshaded_deploy.jar; cd -

cp phoneUtils.js ../libphonenumber/javascript/i18n/phonenumbers/demo.js

ant -f ../libphonenumber/javascript/build.xml compile-demo

cp ../libphonenumber/javascript/i18n/phonenumbers/demo.js dist/phoneUtils.js
