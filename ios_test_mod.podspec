#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'ios_test_mod'
  s.version          = '0.0.1'
  s.author           = ''
  s.license          = 'flutter_assets/LICENCE'
  s.homepage         = 'http://'
  s.source           = { :path => '.' }
  s.summary           = 'A Flutter iOS Module'
  s.resources = '.ios/Flutter/flutter_assets'
  s.vendored_frameworks = '.ios/Flutter/App.framework'
  s.xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.pod_target_xconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.ios.deployment_target = '8.0'
  s.preserve_paths = 'lib/main.dart'
  s.prepare_command = <<-CMD
    flutter build ios --debug
  CMD
end
