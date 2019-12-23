phoneUtils
==========

A simple wrapper of Google Phone Number library

This is a fork of the repository [https://github.com/nathanhammond/libphonenumber]

Exports
-------

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

Compile
-------

Run `./configure`
