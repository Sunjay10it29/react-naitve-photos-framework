require 'json'
pkg = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name         = "RNPhotosFramework"
  s.version      = pkg["version"]
  s.summary      = pkg["description"]
  s.requires_arc = true
  s.license      = pkg["license"]
  s.homepage     = pkg["homepage"]
  s.author       = pkg["author"]
  s.source       = { :git => pkg["repository"]["url"],
                     :tag => "master" }
  s.source_files = 'ios/**/*.{h,m}'
  #s.platform     = :ios, "9.3"
  s.dependency 'React'
end
