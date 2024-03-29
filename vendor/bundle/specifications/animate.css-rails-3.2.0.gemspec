# -*- encoding: utf-8 -*-
# stub: animate.css-rails 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "animate.css-rails".freeze
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Trevor Strieber".freeze]
  s.date = "2014-07-07"
  s.description = "animate.css's CSS for the Rails 3.1+ asset pipeline.".freeze
  s.email = ["trevor@strieber.org".freeze]
  s.homepage = "http://github.com/TrevorS/animate.css-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "This gem packages animate.css for the Rails 3.1+ asset pipeline.".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
