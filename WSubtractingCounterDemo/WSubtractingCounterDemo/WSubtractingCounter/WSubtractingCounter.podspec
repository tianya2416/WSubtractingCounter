#
#  Be sure to run `pod spec lint WSubtractingCounter.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = 'WSubtractingCounter'
  s.version      = '1.0.0'
  s.summary      = 'WSubtractingCounter'

  s.description  = <<-DESC
                   A longer description of WSubtractingCounter in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  s.homepage     = 'https://github.com/tianya2416/WSubtractingCounter'

  s.license      = { :type => 'None', :file => 'LICENSE' }

  s.author       = { 'tianya2416' => "1203123826@qq.com" }


  s.source       = { :git => 'https://github.com/tianya2416/WSubtractingCounter.git', :tag => '1.0.0' }
  s.platform     = :ios, '5.0'
 #s.source_files  = ''
  s.source_files  = 'WSubtractingCounter/*.{h,m}'
 # s.public_header_files = 'WSubtractingCounter/*.{h}'
  s.requires_arc = true

end
