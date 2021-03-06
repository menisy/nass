# Encoding: UTF-8

Gem::Specification.new do |s|
  s.authors           = [ "Menisy"]
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-personal_infos'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Personal Infos extension for Refinery CMS'
  s.date              = '2015-02-14'
  s.summary           = 'Personal Infos extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.1.3'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.3'
end
