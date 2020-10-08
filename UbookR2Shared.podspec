Pod::Spec.new do |s|
  
  s.name         = 'UbookR2Shared'
  s.version      = '2.0.0-alpha.1-fix.3'
  s.license      = 'BSD 3-Clause License'
  s.summary      = 'R2 Shared'
  s.swift_version = '5.0'
  s.homepage     = 'http://readium.github.io'
  s.author       = { "Aferdita Muriqi" => "aferdita.muriqi@gmail.com" }
  s.source       = { :git => 'https://github.com/ubook-editora/r2-shared-swift.git', :tag => '2.0.0-alpha.1-fix.3' }
  s.exclude_files = ["**/Info*.plist", "r2-shared-swift/Toolkit/Archive/ZIPFoundation.swift"]
  s.requires_arc = true
  s.resources    = ['r2-shared-swift/Resources/**']
  s.source_files  = "r2-shared-swift/**/*.{m,h,swift}"
  s.platform     = :ios
  s.ios.deployment_target = "10.0"
  s.frameworks   = 'CoreServices'
  s.libraries =  'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  s.dependency 'Fuzi', '3.1.2'
  s.dependency 'Minizip', '1.0.0'
end
