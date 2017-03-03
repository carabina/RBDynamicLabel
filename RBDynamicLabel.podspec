
Pod::Spec.new do |s|
s.name             = 'RBDynamicLabel'
s.version          = '0.1.0'
s.summary          = 'A label which will dynamically adjust its height depending upon the length of the text,'

s.description      =  'Set a top height constraint and trailing and leading constraints and the height will take care of itself.'


s.homepage         = 'https://github.com/RichardBlanch/RBDynamicLabel'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Richard Blanchard' => 'rb3blanchard@mac.com' }
s.source           = { :git => 'https://github.com/RichardBlanch/RBDynamicLabel.git', :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.source_files = 'RBDynamicLabel.swift'

end
