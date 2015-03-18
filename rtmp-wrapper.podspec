Pod::Spec.new do |s|
  s.name     = 'rtmp-wrapper'
  s.version  = '1.0.8'
  s.license  = 'MIT'
  s.summary  = 'librtmp wrapper library for IOS'
  s.homepage = 'https://github.com/ifactorylab/rtmp-wrapper'
  s.authors  = { 'Min Kim' => 'minsikzzang@gmail.com' }
  s.source   = { :git => 'https://github.com/ifactorylab/rtmp-wrapper.git', :tag => "1.0.8", :submodules => true }
  s.requires_arc = true
  
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.dependency 'librtmp-iOS', '~> 1.1.0'
  s.dependency 'IFTimeoutBlock', '~> 1.0.0'

  s.public_header_files = 'rtmp-wrapper/RtmpWrapper.h' 
  s.source_files = 'rtmp-wrapper/{*}.{h,m}'    
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/librtmp-iOS/include/**", "LIBRARY_SEARCH_PATHS" => "${PODS_ROOT}/librtmp-iOS/lib/**" }
  s.libraries = 'ssl', 'crypto', 'rtmp', 'z'
end
