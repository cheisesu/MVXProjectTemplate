# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

target 'MV-Project-Template' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'SwiftLint'
  pod 'RxSwift', '~> 5'
  pod 'AppIconGen'
  
  target 'Presentation' do
    pod 'FunctionalUI', :git => "https://gitlab.com/b1pods/functionalui.git", :branch => "develop"
    pod 'ArchitecturesSupport', :git => "https://gitlab.com/b1pods/architecturessupport.git"
    pod 'EasyDi'
    pod 'SnapKit', '~> 5.0.0'
    pod 'RxCocoa', '~> 5'
    pod 'RxDataSources', '~> 4.0'
  end
  
  target 'PresentationSupport' do
    pod 'EasyDi'
    pod 'FunctionalUI', :git => "https://gitlab.com/b1pods/functionalui.git", :branch => "develop"
    pod 'SnapKit', '~> 5.0.0'
    pod 'SwiftGen'
  end
  
  target 'BusinessFramework' do
    pod 'RxAlamofire', '~> 5.0'
    pod 'EasyDi'
  end
  
  target 'BusinessApplication' do
    pod 'EasyDi'
  end

end
