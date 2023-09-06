#
# Be sure to run `pod lib lint CometChatUIKitSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CometChatUIKitSwift'
  s.version          = '4.0.0-beta3'
  s.summary          = 'CometChat Swift UI Kit is a collection of custom UI Components'
  s.description      = 'The UIKit designed to build text , chat  features in your application. The UI Kit is developed to keep developers in mind and aims to reduce development efforts significantly'

  s.homepage         = 'https://www.cometchat.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'abhisheksaralaya13' => 'abhishek.saralaya@cometchat.com' }
  s.source           = { :git => 'https://github.com/cometchat-pro/cometchat-chat-uikit-ios-swift.git', :tag => '4.0.0' }
  s.swift_version    = '5.0'

  s.source_files     = 'Sources/Components/**/*.swift'
  s.resources = 'Resources/**/*.{storyboard,xib,xcassets,png,pdf,ttf}'
  s.dependency 'CometChatSDK', '4.0.1'

  s.ios.deployment_target = '13.0'



end
