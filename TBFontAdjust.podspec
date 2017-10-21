#
# Be sure to run `pod lib lint TBFontAdjust.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBFontAdjust'
  s.version          = '0.1.0'
  s.summary          = 'iOS font adjust test'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
适用于iOS不同屏幕的字体适配，iphone 5,5s,se,6,6s，7，8使用同一套字体，plus字体放大1.5倍(默认),利用runtime实现,适用于xib与代码手写
                       DESC

  s.homepage         = 'https://github.com/bobtaocool/TBFontAdjust'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1639008265@qq.com' => '1639008265@qq.com' }
  s.source           = { :git => 'https://github.com/bobtaocool/TBFontAdjust.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TBFontAdjust/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TBFontAdjust' => ['TBFontAdjust/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
