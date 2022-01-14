Pod::Spec.new do |spec|
  spec.name                  = 'swift-http-structured-headers'
  spec.version               = '0.1.0'
  spec.license               = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  spec.homepage              = 'https://github.com/apple/swift-http-structured-headers'
  spec.author                = 'Apple Inc. and the SwiftNIO project'
  spec.source                = { :git => 'https://github.com/apple/swift-http-structured-headers.git', :tag => '#{spec.version}', :submodules => true }
  spec.source_files          = 'swift-http-structured-headers/Sources/StructuredFieldValues/**/*.swift', 'swift-http-structured-headers/Sources/RawStructuredFieldValues/*.swift'
  spec.summary               = 'A Swift implementation of the HTTP Structured Header Field Value specification.'
  spec.ios.deployment_target = '9.0'
  spec.swift_version         = '5.0'
  spec.module_name           = 'RawStructuredFieldValues'

  spec.subspec 'RawStructuredFieldValues' do |ss|
    ss.source_files  = 'swift-http-structured-headers/Sources/RawStructuredFieldValues/*.swift'
  end

  spec.subspec 'StructuredFieldValues' do |ss|
    ss.source_files  = 'swift-http-structured-headers/Sources/StructuredFieldValues/**/*'
    ss.dependency 'swift-http-structured-headers/RawStructuredFieldValues'
  end
end
