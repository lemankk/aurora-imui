require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |s|
  s.name         = "aurora-imui-react-native"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  aurora-imui-react-native
                   DESC
  s.homepage     = "https://github.com/jpush/aurora-imui"
  s.license      = "ISC"
  # s.license    = { :type => "ISC", :file => "LICENSE" }
  s.authors      = { "KenChoi" => "", "huminiOS" => "" }
  s.platforms    = { :ios => "9.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/jpush/aurora-imui.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

