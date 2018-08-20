require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-bugfender"
  s.version      = package["version"]
  s.summary      = "A wrapper around BugfenderSDK-iOS"
  s.author       = "Bugfender"

  s.homepage     = "https://github.com/thinkproductivity/react-native-bugfender"

  s.license      = "MIT"
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/thinkproductivity/react-native-bugfender.git", :tag => "#{s.version}" }

  s.source_files  = "RNBugfender/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "BugfenderSDK/ObjC"
end
