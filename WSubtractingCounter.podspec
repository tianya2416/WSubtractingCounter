Pod::Spec.new do |s|
  s.name             = 'WSubtractingCounter'
  s.version          = '1.0.6'
  s.summary          = 'An one-line tool to show  styles of badge for UIView'
  s.description      = <<-DESC
                       An easy tool to show different styles of UIView objects without the need for subclassing.
                       DESC
  s.homepage         = 'https://github.com/tianya2416/WSubtractingCounter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tianya2416' => '1203123826@qq.com' } 
  s.source           = { :git => 'https://github.com/tianya2416/WSubtractingCounter.git', :tag => s.version }
  s.platform         = :ios, '5.0'
  s.requires_arc     = true
  s.source_files     = 'WSubtractingCounter/*.{h,m}'
end

