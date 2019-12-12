#
# Be sure to run `pod lib lint ChainTail.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ChainTail'
  s.version          = '1.0.1'
  s.summary          = 'Convenient use of chain programming.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://github.com/yuantrybest/ChainTail'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuantrybest' => 'yuanl@ccwcar.com' }
  s.source           = { :git => 'https://github.com/yuantrybest/ChainTail.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_versions = '4.0'

  s.source_files = 'ChainTail/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ChainTail' => ['ChainTail/Assets/*.png']
  # }
   s.frameworks = 'UIKit'
end
