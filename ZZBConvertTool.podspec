Pod::Spec.new do |spec|

  spec.name         = "ZZBConvertTool"
  spec.version      = "1.0.0"
  spec.summary      = "进制互相转换"

  spec.description  = <<-DESC
ZZBConvertTool是一个二、八、十和十六进制互相转换工具。
                   DESC

  spec.homepage     = "https://github.com/ZhangZhenBin/ZZBConvertTool"
 
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "ZhangZhenBin" => "1421588275@qq.com" }

  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/ZhangZhenBin/ZZBConvertTool.git", :tag => "#{spec.version}" }

  spec.source_files  = "ZZBConvertTool/ConvertTool/*.{h,m}"

end

