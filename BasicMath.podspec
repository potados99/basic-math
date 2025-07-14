Pod::Spec.new do |spec|
  spec.name          = 'BasicMath'
  spec.version       = '1.0.1'
  spec.summary       = '더미 라이브러리'
  spec.description   = 'iOS 라이브러리 테스트용 더미 라이브러리입니다.'
  spec.homepage      = 'https://greensyntax.app'
  spec.author        = { 'Potados Song' => 'potados.com' }
  spec.license       = { :type => 'MIT', :file => 'LICENSE' }
  spec.source        = { :git => 'https://github.com/potados99/BasicMath.git', :tag => spec.version.to_s }
  spec.swift_version = '5.0'
  spec.ios.deployment_target = '16.6'

  spec.resource_bundles = {
    'BasicMath' => ['BasicMath/Assets/*.png']
  }

  # 이 라이브러리의 최종 산출물입니다.
  spec.vendored_frameworks = 'BasicMath.xcframework'
  #spec.source_files = 'BasicMath/Classes/**/*.{swift,h}'

  spec.dependency "SSZipArchive", "~> 2.6.0" # SPM과 이름이 다른 라이브러리
end
