source :rubygems

RONIN_URL = 'http://github.com/ronin-ruby'

gem 'wordlist', '~> 0.2.0', :git => 'http://github.com/sophsec/wordlist.git',
                            :branch => 'refactor'

# Ronin libraries
gem 'ronin',          '~> 1.1', :git => "#{RONIN_URL}/ronin.git"
gem 'ronin-asm',      '~> 0.1', :git => "#{RONIN_URL}/ronin-asm.git"
gem 'ronin-web',      '~> 0.3', :git => "#{RONIN_URL}/ronin-web.git"
gem 'ronin-exploits', '~> 1.0', :git => "#{RONIN_URL}/ronin-exploits.git"
gem 'ronin-scanners', '~> 1.0', :git => "#{RONIN_URL}/ronin-scanners.git"

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

#
# To enable additional DataMapper adapters for development work or for
# testing purposes, simple set the ADAPTER or ADAPTERS environment
# variable:
#
#     export ADAPTER="postgres"
#     bundle install
#
#     ./bin/ronin --database postgres://ronin@localhost/ronin
#
require 'set'

DM_ADAPTERS = Set['postgres', 'mysql', 'oracle', 'sqlserver']

adapters = (ENV['ADAPTER'] || ENV['ADAPTERS']).to_s
adapters = Set.new(adapters.to_s.tr(',',' ').split)

(DM_ADAPTERS & adapters).each do |adapter|
  gem "dm-#{adapter}-adapter", DM_VERSION #, :git => "#{DM_URI}/dm-#{adapter}-adapter.git"
end
