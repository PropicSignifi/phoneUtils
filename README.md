libphonenumber
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

Run `./compile.sh`

