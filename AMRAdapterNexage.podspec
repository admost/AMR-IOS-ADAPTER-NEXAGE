Pod::Spec.new do |s|
  s.name             = 'AMRAdapterNexage'
  s.version          = '6.8.2.3'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Nexage adapter for AMR SDK.'
  s.description      = 'AMR Nexage adapter allows publishers to mediate Nexage banner, native, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-NEXAGE.git',
 								 :tag => s.version.to_s
 								}
    s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.frameworks = 'MessageUI'
  s.libraries = 'xml2'
  s.vendored_libraries = 'AMRAdapterNexage/Libs/libAMRAdapterNexage.a'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.vendored_frameworks = 'AMRAdapterNexage/Frameworks/MMAdSDK.framework'
  s.dependency 'AMRSDK', '~> 1.5.0'
end
