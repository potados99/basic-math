# Uncomment the next line to define a global platform for your project
platform :ios, '16.6'

target 'BasicMath' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # 로컬에서 당겨와요
  pod 'SSZipArchive', :path => 'External/ZipArchive'

  pod 'RxBluetoothKit_Airthings'



  # Add other dependencies here
  # ...

  # 얘네들은 빌드 결과물에 그냥 합쳐지게 돼요.
  static_frameworks = ['SSZipArchive']

  # Make all the other frameworks into static frameworks by overriding the static_framework? function to return true
  pre_install do |installer|
    installer.pod_targets.each do |pod|
      if static_frameworks.include?(pod.name)
        puts "Overriding the static_framework? method for #{pod.name}"
        def pod.static_framework?;
          true
        end
        def pod.build_type;
          Pod::BuildType.static_library
        end
      end
    end
  end

end
