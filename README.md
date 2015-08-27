# Swiftly Bridged Crypto

This framework provides a Swift wrapper for CommonCrypto and other C crypto functionality. 
You will need to build this framework manually (for now; hopefully), start by linking CommonCrypto.

## Building

### CommonCrypto 

You will need to go into the CommonCrypto folder and edit the module.map for 
your specific Xcode path. Below is my working module.map for Xcode 7 beta 6 on 
OS X 10.10.

```
module CommonCrypto [system] {
header "/Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include/CommonCrypto/CommonCrypto.h"
export *
}
```

Next, you will need to go into Xcode and edit it some build settings. Go to the project build settings and set it to show all settings. Go to "Swift Compilier - Search Paths" and add the following: 

```
${SRCROOT}/CommonCrypto
```

![Xcode project all build settings](https://github.com/jamcar23/SwiftlyBridgedCrypto/blob/master/docs/screenshots/projectBuildSettings_All.png)
Show all build settings.

![Swift Compiler - Search Paths settings](https://github.com/jamcar23/SwiftlyBridgedCrypto/blob/master/docs/screenshots/searchPathSettings.png)
Set Swift compiler settings.

## License

The MIT License (MIT)

Copyright (c) 2015 James Carroll

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
