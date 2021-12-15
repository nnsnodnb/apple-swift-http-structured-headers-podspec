Pod::Spec.new do |spec|
  spec.name                  = 'StructuredHeaders'
  spec.version               = '0.0.1'
  spec.license               = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  spec.homepage              = 'https://github.com/apple/swift-http-structured-headers'
  spec.author                = 'Apple Inc. and the SwiftNIO project'
  spec.source                = { :git => 'https://github.com/apple/swift-http-structured-headers.git', :tag => '#{spec.version}', :submodules => true }
  spec.source_files          = 'swift-http-structured-headers/Sources/StructuredHeaders/*.swift'
  spec.summary               = 'A Swift implementation of the HTTP Structured Header Field Value specification.'
  spec.module_name           = 'StructuredHeaders'
  spec.ios.deployment_target = '9.0'
end
