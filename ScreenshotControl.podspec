Pod::Spec.new do |spec|
    spec.name         = "ScreenshotControl"
    spec.version      = "1.0.0"
    spec.summary      = "A React Native plugin to enable and disable screenshot capturing."
    spec.description  = "A React Native module to control screenshot functionality on iOS and Android."
    spec.homepage     = "https://github.com/akshaykxamp/screenshot-control-by-akshay.git"
    spec.license      = "MIT"
    spec.author       = { "Your Name" => "your-email@example.com" }
    spec.source       = { :git => "https://github.com/akshaykxamp/screenshot-control-by-akshay.git", :tag => "1.0.0" }
    spec.platform     = :ios, "10.0"
    spec.source_files = "ios/**/*.{h,m,swift}"
    spec.dependency   "React-Core"
  end
  