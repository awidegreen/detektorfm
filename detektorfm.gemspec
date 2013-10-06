# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'detektorfm/version'

Gem::Specification.new do |s|
  s.name         = 'detektorfm'
  s.version       = DetektorFm::VERSION
  s.date         = '2013-09-24'
  s.summary      = 'detektorfm library'
  s.description  = 'Interfacing (Querying) the detektor.fm (webradio) website.'
  s.authors      = ["Armin Widegreen"]
  s.email        = 'armin.widegreen@gmail.com'
  s.homepage     = 'http://github.com/awidegreen/detektorfm'
  s.license      = 'BSD (2-Clause)'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'nokogiri'
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
end

