@version = "1.0.2"
		Pod::Spec.new do |s| 
		s.name = "CommonUICategory"
		s.version = @version 
		s.summary = "简述1"
		s.description = "描述2" 
		s.homepage = "https://github.com/wuaitianya/CommonUICategory" 
		s.license = { :type => 'MIT', :file => 'LICENSE' } 
		s.author = { "wuaitianya" => "wuaitianyapeng@163.com" } 
		s.ios.deployment_target = '8.0' 
		s.source = { :git => "https://github.com/wuaitianya/CommonUICategory.git", :tag => "v#{s.version}" } 
		s.source_files = "CommonUICategory/Category/**/*.{h,m}" 
		s.requires_arc = true 
		s.framework = "UIKit"
		end