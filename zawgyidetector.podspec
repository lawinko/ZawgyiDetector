#
#  Be sure to run `pod spec lint myanmartools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "zawgyidetector"
  spec.version      = "1.0.2"
  spec.summary      = "Zawgyi detection tool"
  spec.description  = <<-DESC
  This repository is customized platform support of https://github.com/google/myanmar-tools to use in iOS and macOS by Swift language.
                   DESC
  spec.homepage     = "https://github.com/lawinko/ZawgyiDetector"
  spec.license      = { :type => "Apache", :file => "LICENSE" }
  spec.author             = { "La Win Ko" => "lawinko11@gmail.com" }
  spec.social_media_url   = "https://www.facebook.com/lawinko.dev/"
  spec.source       = { :git => "https://github.com/lawinko/ZawgyiDetector.git", :tag => "#{spec.version}" }
  spec.source_files  = "zawgyidetector/src/**/*.{h,m,swift}"
  spec.resource  = "zawgyidetector/resources/zawgyiUnicodeModel.dat"
  spec.swift_version = '5.2'
  spec.ios.deployment_target  = '9.0'
  spec.osx.deployment_target  = '10.10'

end
