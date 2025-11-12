Pod::Spec.new do |spec|
  spec.name                  = 'swift-http-structured-headers'
  spec.version               = '1.5.0'
  spec.license               = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  spec.homepage              = 'https://github.com/apple/swift-http-structured-headers'
  spec.author                = 'Apple Inc. and the SwiftNIO project'
  spec.source                = { :git => 'https://github.com/apple/swift-http-structured-headers.git', :tag => '#{spec.version}' }
  spec.summary               = 'A Swift implementation of the HTTP Structured Header Field Value specification.'
  spec.ios.deployment_target = '12.0'
  spec.swift_version         = '6.0'
  spec.vendored_frameworks   = 'Frameworks/RawStructuredFieldValues.xcframework', 'Frameworks/StructuredFieldValues.xcframework'
end
