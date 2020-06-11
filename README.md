# Zawgyi Detector Documentation

This documentation is for *Swift* specific usage of [myanmar-tools](https://github.com/google/myanmar-tools).

## Installation

**Cocoapods**

``` 
platform :ios, '(ios_version)'

source 'https://github.com/CocoaPods/Specs.git'

target 'Project-name'  do

	pod 'zawgyidetector' 

end 
```

## Usage

```
/**
create a singleton instance of ZawgyiDetector class and pass string input that 
you want to predict into predict function
**/

let detector = ZawgyiDetector.shared
detector.predict(input: "မ္း")

// score is now 0.999772 (very likely Zawgyi)
```

## Zawgyi <-> Unicode conversion

You can check on this - https://github.com/Rabbit-Converter/Rabbit-Swift


