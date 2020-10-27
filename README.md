phoneUtils
==========

A simple wrapper of
[Google Phone Number library](https://github.com/google/libphonenumber)

This is a fork of the deprecated repository
[https://github.com/nathanhammond/libphonenumber]

Overview
------

This library adds the global `phoneUtils` with the following methods:

```js
phoneUtils.countryCodeToRegionCodeMap();
phoneUtils.isPossibleNumber(phoneNumber, regionCode);
phoneUtils.isPossibleNumberWithReason(phoneNumber, regionCode);
phoneUtils.isValidNumber(phoneNumber, regionCode);
phoneUtils.isValidNumberForRegion(phoneNumber, regionCode);
phoneUtils.getCountryCodeForRegion(regionCode);
phoneUtils.getRegionCodeForNumber(phoneNumber, regionCode);
phoneUtils.getNumberType(phoneNumber, regionCode);
phoneUtils.getSupportedRegions();
phoneUtils.formatE164(phoneNumber, regionCode);
phoneUtils.formatNational(phoneNumber, regionCode);
phoneUtils.formatInternational(phoneNumber, regionCode);
phoneUtils.formatInOriginalFormat(phoneNumber, regionCode);
phoneUtils.formatOutOfCountryCallingNumber(phoneNumber, regionCode, target);
```

Use the library
-------

Copy `dist/phoneUtils.js` to your work space

Version
-------

Version number is consistent with the [release versions of
Google Phone Number library](https://github.com/google/libphonenumber/releases)

Compile with the latest Google Phone Library code
-------

Run `./compile.sh`.

The following is a description of what the script does.

1) The script first check the required commands for the upcoming compilation.

2) It then clones the depended Google libraries to the upper level directory.
These libraries are: libphonenumber, closure-library, closure-compiler,
closure-linter, and python-gflags.

3) The next step is to compile the closure-compiler. The lastest version is
using bazelisk to compile. Go the the directory of closure-compiler and
run `bazelisk build //:compiler_unshaded_deploy.jar` to compile. If it
doesn't work, you have to go to https://github.com/google/closure-compiler to
look for answers.

4) Originally, the next step should be running `ant -f build.xml compile` to
compile the source code. However, currently there are some bugs in the path
resolving from the script closure-library/closure/bin/build/closurebuilder.py,
so we have to use a workaround: copy the source code to libphonenumber and
replace its demo source code, and then compile using the ant script from
libphonenumber.
