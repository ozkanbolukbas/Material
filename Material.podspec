Pod::Spec.new do |s|
	s.name = 'Material-nayla'
	s.version = '3.2.1'
	s.swift_version = '5.0'
	s.license = 'BSD-3-Clause'
	s.summary = 'A UI/UX framework for creating beautiful applications.'
	s.homepage = 'http://naylalabs.com'
	s.social_media_url = 'http://naylalabs.com'
	s.authors = { 'Naylalabs, Inc.' => 'hello@naylalabs.com' }
 	s.source = { :git => 'https://github.com/ozkanbolukbas/Material.git', :tag => s.version }

	s.default_subspec = 'Core'
	s.platform = :ios, '8.0'

	s.subspec 'Core' do |s|
		s.ios.deployment_target = '8.0'
		s.ios.source_files = 'Sources/**/*.swift'
		s.requires_arc = true
		s.resource_bundles = {
			'com.cosmicmind.material.icons' => ['Sources/**/*.xcassets'],
			'com.cosmicmind.material.fonts' => ['Sources/**/*.ttf']
		}

		s.dependency 'Motion', '~> 3.1.1'
	end
end
