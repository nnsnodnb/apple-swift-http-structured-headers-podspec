Pod::Spec.new do |spec|
  spec.name                  = 'swift-http-structured-headers'
  spec.version               = '0.0.1'
  spec.license               = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  spec.homepage              = 'https://github.com/apple/swift-http-structured-headers'
  spec.author                = 'Apple Inc. and the SwiftNIO project'
  spec.source                = { :git => 'https://github.com/apple/swift-http-structured-headers.git', :tag => spec.version.to_s, :submodules => true }
  spec.source_files          = 'swift-http-structured-headers/Sources/CodableStructuredHeaders/**/*.swift', 'swift-http-structured-headers/Sources/StructuredHeaders/*.swift'
  spec.summary               = 'A Swift implementation of the HTTP Structured Header Field Value specification.'
  spec.ios.deployment_target = '9.0'
  spec.swift_version         = '5.0'
  spec.module_name           = 'StructuredHeaders'

  spec.subspec 'StructuredHeaders' do |ss|
    ss.source_files  = 'swift-http-structured-headers/Sources/StructuredHeaders/*.swift'
  end

  spec.subspec 'CodableStructuredHeaders' do |ss|
    ss.source_files  = 'swift-http-structured-headers/Sources/CodableStructuredHeaders/**/*'
    ss.dependency 'swift-http-structured-headers/StructuredHeaders'
  end
end
