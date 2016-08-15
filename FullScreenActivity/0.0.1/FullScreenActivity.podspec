Pod::Spec.new do |s|


  s.name         = "FullScreenActivity"
  s.version      = "0.0.1"
  s.summary      = "Show Activity Indicator with message and half transparent full screen background"

  s.homepage     = "https://github.com/DamonChen117/FullScreenActivity"

  s.license      = "MIT"


  s.author             = { "Damon Chen" => "chenjiling@gmail.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/DamonChen117/FullScreenActivity.git", :tag => "#{s.version}" }


  s.source_files  = "FullScreenActivity/**/*.{swift,h,m}"
  s.resources = "FullScreenActivity/*.xib"

  s.requires_arc = true


end
