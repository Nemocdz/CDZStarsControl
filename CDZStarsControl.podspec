Pod::Spec.new do |s|
  s.name         = "CDZStarControl"
  s.version      = "1.0.0"
  s.summary      = "A star control"
  s.homepage     = "https://github.com/Nemocdz/CDZStarControl"
  s.license      = "MIT"
  s.authors      = { 'Nemocdz' => 'nemocdz@gmail.com'}
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Nemocdz/CDZStarControl.git", :tag => s.version }
  s.source_files = 'CDZStarControl', 'CDZStarControl/CDZStarControl/*.{h,m}'
  s.requires_arc = true
end
     