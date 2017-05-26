Pod::Spec.new do |s|
  s.name         = "CDZStarsControl"
  s.version      = "1.0.4"
  s.summary      = "A star control"
  s.homepage     = "https://github.com/Nemocdz/CDZStarsControl"
  s.license      = "MIT"
  s.authors      = { 'Nemocdz' => 'nemocdz@gmail.com'}
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Nemocdz/CDZStarsControl.git", :tag => s.version }
  s.source_files = 'CDZStarsControl', 'CDZStarsControlDemo/CDZStarsControl/*.{h,m}'
  s.requires_arc = true
end
     