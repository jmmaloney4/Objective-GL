Pod::Spec.new do |s|
  s.name             = "objective-gl"
  s.version          = "0.1.0"
  s.summary          = "An Objective-C wrapper library for Open-GL and glfw3"
  s.description      = "An Objective-C wrapper library for Open-GL and glfw3."
  s.homepage         = "https://github.com/jmmaloney4/Objective-GL"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jack Maloney" => "jmmaloney4@gmail.com" }
  s.source           = { :git => "https://github.com/jmmaloney4/Objective-GL.git", :tag => s.version.to_s }

  s.platform     = :osx, '10.7'
  s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'Classes/osx'
  #s.resources = 'Assets/*.png'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
end
