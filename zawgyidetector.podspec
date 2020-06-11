Pod::Spec.new do |spec|
  
  spec.name         = "zawgyidetector"
  spec.version      = "1.1"
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
