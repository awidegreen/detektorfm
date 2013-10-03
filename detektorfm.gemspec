# -*- encoding: utf-8 -*-
lib = File.expand_path File.join(File.dirname(__FILE__), 'lib')
$:.unshift lib unless $:.include?(lib)

require 'bundler'
require 'rake'

Gem::Specification.new do |s|
  s.name         = 'detektorfm'
  s.version      = File.read('VERSION').strip
  s.date         = '2013-09-24'
  s.summary      = 'detektorfm'
  s.description  = 'Interfacing (Querying) the detektor.fm (webradio) website.'
  s.authors      = ["Armin Widegreen"]
  s.email        = 'armin.widegreen@gmail.com'
  s.files        = ['lib/detektorfm.rb']
  s.homepage     = 'http://github.com/awidegreen/detektorfm'
  s.license      = 'BSD (2-Clause)'
  s.require_path = ['lib']

  s.add_runtime_dependency 'nokogiri'
end

