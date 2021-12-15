Pod::Spec.new do |spec|
  spec.name         = 'swift-http-structured-headers'
  spec.version      = '0.0.1'
  spec.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  spec.homepage     = 'https://github.com/apple/swift-http-structured-headers'
  spec.author       = 'apple'
  spec.source       = { :git => 'https://github.com/apple/swift-http-structured-headers.git', :tag => '#{spec.version}' }
  spec.source_files = 'Sources/**/*.swift'
  spec.summary      = 'A Swift implementation of the HTTP Structured Header Field Value specification.'
end
