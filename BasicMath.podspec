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

  # 이 라이브러리의 최종 산출물입니다.
  spec.vendored_frameworks = 'BasicMath.xcframework'

  # 개발할 때에는 이걸 쓰는 것도 좋아요.
  #spec.source_files = 'BasicMath/Classes/**/*.{swift,h}'

  # 내부 의존성들
  spec.dependency "RxBluetoothKit_Airthings", "~> 6.3.2"
end
