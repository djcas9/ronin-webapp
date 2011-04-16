source :rubygems

RONIN_URL = 'http://github.com/ronin-ruby'

gemspec

gem 'ronin', '~> 1.0.1', :git => "#{RONIN_URL}/ronin.git"

# Component requirements

group :development do
  gem 'rake', '~> 0.8.7'
  gem 'ore-tasks', '~> 0.4'
  gem 'rspec', '~> 2.4'
end

# Test requirements
group :test do
  gem 'rack-test', '~> 0.5.7', :require => "rack/test"
end
