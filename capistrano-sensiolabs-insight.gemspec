$LOAD_PATH.unshift File.dirname(__FILE__) + '/lib'
require 'capistrano-sensiolabs-insight/version'

Gem::Specification.new do |s|
  s.name          = 'capistrano-sensiolabs-insight'
  s.version       = Capistrano::SensioLabsInsight::VERSION
  s.authors       = ['Ahmed Mohamed']
  s.email         = ['a.mohamed@edfa3ly.com.eg']
  s.homepage      = 'http://github.com/ahmedmhmd/capistrano-sensiolabs-insight'
  s.summary       = 'Capistrano SensioLabs Insight recipe'
  s.description   = 'Capistrano recipe to notify SensioLabs Insight after deploying code'
  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']
  s.license       = 'MIT'

  s.add_dependency 'capistrano'
  s.add_dependency 'colored'
end