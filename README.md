# Zawgyi Detector Documentation

This documentation is for *Swift* specific usage of [myanmar-tools](https://github.com/google/myanmar-tools).

## Installation

**Cocoapods**

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate ZawgyiDetector into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'zawgyidetector', '~> 1.2'
```

**Carthage**

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate ZawgyiDetector into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "lawinko/ZawgyiDetector" ~> 1.2
```

## Usage

Create a singleton instance of ZawgyiDetector class and pass input string that 
you want to predict into predict function.
```swift
import zawgyidetector

let detector = ZawgyiDetector.shared
detector.predict(input: "မ္း")

// score is now 0.999772 (very likely Zawgyi)
```

Returns negative infinity when input is not burmese

```swift
let rawStr = "hello, world"
let probability = detector.predict(input: rawStr) // returns -Inf

if probability.isInfinite { 
    // Not burmese text. No need to convert
}
```

## Zawgyi <-> Unicode conversion

You can check on this - https://github.com/Rabbit-Converter/Rabbit-Swift


