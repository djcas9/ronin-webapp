source :rubygems

RONIN_URL = 'http://github.com/ronin-ruby'

# Ronin libraries
gem 'ronin',          '~> 1.0.1', :git => "#{RONIN_URL}/ronin.git"
gem 'ronin-asm',      '~> 0.1.0', :git => "#{RONIN_URL}/ronin-asm.git"
gem 'ronin-web',      '~> 0.3.0', :git => "#{RONIN_URL}/ronin-web.git"
gem 'ronin-exploits', '~> 1.0.0', :git => "#{RONIN_URL}/ronin-exploits.git"
gem 'ronin-scanners', '~> 1.0.0', :git => "#{RONIN_URL}/ronin-scanners.git"

# Component requirements
gem 'rack-flash', '~> 0.1'

# Padrino
PADRINO_VERSION = '~> 0.9.25'

gem 'padrino-core',     PADRINO_VERSION
gem 'padrino-gen',      PADRINO_VERSION
gem 'padrino-cache',    PADRINO_VERSION
gem 'padrino-helpers',  PADRINO_VERSION

group :development do
  gem 'rake', '~> 0.8.7'
  gem 'ore-tasks', '~> 0.4'
  gem 'rspec', '~> 2.4'
end

# Test requirements
group :test do
  gem 'rack-test', '~> 0.5.7', :require => "rack/test"
end
