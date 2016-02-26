
Pod::Spec.new do |s|
  s.name         = 'WSubtractingCounter'
  s.version      = '1.0.0'
  s.summary      = 'WSubtractingCounter library'

  s.description  = <<-DESC
                   A longer description of WSubtractingCounter in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  s.homepage     = 'https://github.com/tianya2416/WSubtractingCounter'
  s.author       = { 'tianya2416' => "1203123826@qq.com" }
  s.license      = { :type => 'None', :file => 'LICENSE' }
  s.source       = { :git => 'https://github.com/tianya2416/WSubtractingCounter.git', :tag => s.version }
  s.platform     = :ios, '6.0'
  s.source_files = 'WSubtractingCounter/*.{h,m}'
  s.requires_arc = true
end
