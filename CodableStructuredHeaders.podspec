Pod::Spec.new do |spec|
  spec.name                  = 'CodableStructuredHeaders'
  spec.version               = '0.0.1'
  spec.license               = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  spec.homepage              = 'https://github.com/apple/swift-http-structured-headers'
  spec.author                = 'Apple Inc. and the SwiftNIO project'
  spec.source                = { :git => 'https://github.com/apple/swift-http-structured-headers.git', :tag => '#{spec.version}', :submodules => true }
  spec.summary               = 'A Swift implementation of the HTTP Structured Header Field Value specification.'
  spec.module_name           = 'CodableStructuredHeaders'
  spec.source_files          = 'swift-http-structured-headers/Sources/CodableStructuredHeaders/**/*'
  spec.ios.deployment_target = '9.0'

  spec.dependency "StructuredHeaders", :podspec => 'https://raw.githubusercontent.com/nnsnodnb/apple-swift-http-structured-headers-podspec/main/StructuredHeaders.podspec', :submodules => true
end
