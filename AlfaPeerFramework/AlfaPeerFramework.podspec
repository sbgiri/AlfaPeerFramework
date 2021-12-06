Pod::Spec.new do |spec|
  
  spec.name         = "AlfaPeerFramework"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of AlfaPeerFramework."
  
  spec.description  = "A short description of AlfaPeerFramework."
  
  spec.homepage     = "https://github.com/sbgiri/AlfaPeerFramework"
  #spec.source_files  = "AlfaPeerFramework/**/.{swift}"
  
  
  spec.license      = "MIT"
  spec.module_name   = "AlfaPeerFramework"
  
  spec.author             = { "Shasi Bhushan" => "sbgiri@antiersolutions.com" }
  spec.platform     = :ios, "13.0"
  
  spec.source       = { :git => "https://github.com/sbgiri/AlfaPeerFramework.git", :tag => spec.version.to_s }
  spec.swift_versions = "5.0"
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'VALID_ARCHS' => 'x86_64 armv7 arm64'  }
  
  #    spec.source_files = 'AlfaPeerFramework/**/*.{swift}'
  spec.dependency 'IrohaCrypto/sr25519', '~> 0.8.0'
  spec.dependency 'IrohaCrypto/ed25519', '~> 0.8.0'
  spec.dependency 'IrohaCrypto/secp256k1', '~> 0.8.0'
  spec.dependency 'IrohaCrypto/Scrypt', '~> 0.8.0'
  spec.dependency 'IrohaCrypto/ss58', '~> 0.8.0'
  #spec.dependency 'ReachabilitySwift'
  #spec.dependency 'RobinHood'
  #spec.dependency 'Starscream'
  #spec.dependency 'TweetNacl'
  spec.dependency 'BigInt', '~> 5.0'
  spec.dependency 'xxHash-Swift', '~> 1.0.0'
  spec.dependency 'CryptoSwift'
  #spec.dependency 'secp256k1.swift'
  
  
end
