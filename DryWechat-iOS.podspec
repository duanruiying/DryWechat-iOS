#
# Be sure to run `pod lib lint DryWechat-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# 提交仓库:
# pod spec lint DryWechat-iOS.podspec --allow-warnings --use-libraries
# pod trunk push DryWechat-iOS.podspec --allow-warnings --use-libraries
#

Pod::Spec.new do |s|
  
  # Git
  s.name        = 'DryWechat-iOS'
  s.version     = '0.0.3'
  s.summary     = 'DryWechat-iOS'
  s.homepage    = 'https://github.com/duanruiying/DryWechat-iOS'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.author      = { 'duanruiying' => '2237840768@qq.com' }
  s.source      = { :git => 'https://github.com/duanruiying/DryWechat-iOS.git', :tag => s.version.to_s }
  s.description = <<-DESC
  TODO: iOS微信功能简化(登录、支付、分享、打开小程序).
  DESC
  
  # User
  #s.swift_version         = '5.0'
  s.ios.deployment_target = '10.0'
  s.requires_arc          = true
  s.user_target_xcconfig  = {'OTHER_LDFLAGS' => ['-w', '-ObjC']}
  
  # Pod
  s.static_framework      = true
  s.pod_target_xcconfig   = {'OTHER_LDFLAGS' => ['-w']}
  
  # Code
  s.source_files          = 'DryWechat-iOS/Classes/Code/**/*'
  s.public_header_files   = 'DryWechat-iOS/Classes/Code/Public/**/*.h'
  
  # System
  s.libraries  = 'z', 'sqlite3.0', 'c++'
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'Security', 'CoreTelephony', 'CFNetwork', 'CoreGraphics'
  
  # ThirdParty
  #s.vendored_libraries  = ''
  #s.vendored_frameworks = ''
  s.dependency 'WechatOpenSDK'
  
end
