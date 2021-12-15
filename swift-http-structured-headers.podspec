Pod::Spec.new do |spec|
  spec.name         = 'swift-http-structured-headers'
  spec.version      = '0.0.1'
  spec.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  spec.homepage     = 'https://github.com/apple/swift-http-structured-headers'
  spec.author       = 'apple'
  spec.source       = { :git => 'https://github.com/apple/swift-http-structured-headers.git', :tag => '#{spec.version}', :submodules => true }
  spec.summary      = 'A Swift implementation of the HTTP Structured Header Field Value specification.'

  spec.subspec 'StructuredHeaders' do |subspec|
    subspec.source_files = 'swift-http-structured-headers/Sources/StructuredHeaders/*.swift'
  end

  spec.subspec 'CodableStructuredHeaders' do |subspec|
    subspec.source_files = 'swift-http-structured-headers/Sources/CodableStructuredHeaders/**/*.swift'
    subspec.dependency "StructuredHeaders", :git => 'https://github.com/nnsnodnb/apple-swift-http-structured-headers.git'
  end
end
