# Zawgyi Detector Documentation

This documentation is for *Swift* specific usage of [myanmar-tools](https://github.com/google/myanmar-tools).

## Installation

**Cocoapods**

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate ZawgyiDetector into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'zawgyidetector', '~> 1.1'
```

**Carthage**

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate ZawgyiDetector into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "lawinko/ZawgyiDetector" ~> 1.1
```

## Usage

Create a singleton instance of ZawgyiDetector class and pass input string that 
you want to predict into predict function.
```
let detector = ZawgyiDetector.shared
detector.predict(input: "မ္း")

// score is now 0.999772 (very likely Zawgyi)
```

## Zawgyi <-> Unicode conversion

You can check on this - https://github.com/Rabbit-Converter/Rabbit-Swift


