require 'ronin/installation'

##
# This file mounts each app in the Padrino project to a specified sub-uri.
# You can mount additional applications using any of these commands below:
#
#   Padrino.mount("blog").to('/blog')
#   Padrino.mount("blog", :app_class => "BlogApp").to('/blog')
#   Padrino.mount("blog", :app_file =>  "path/to/blog/app.rb").to('/blog')
#
# You can also map apps to a specified host:
#
#   Padrino.mount("Admin").host("admin.example.org")
#   Padrino.mount("WebSite").host(/.*\.?example.org/)
#   Padrino.mount("Foo").to("/foo").host("bar.example.org")
#
# Note 1: Mounted apps (by default) should be placed into the project root at '/app_name'.
# Note 2: If you use the host matching remember to respect the order of the rules.
#
# By default, this file mounts the parimary app which was generated with this project.
# However, the mounted app can be modified as needed:
#
#   Padrino.mount(:app_file => "path/to/file", :app_class => "Blog").to('/')
#

# Mounts the core application for this project
Padrino.mount('app').to('/')
Padrino.mount('console', :app_class => 'ConsoleApp').to('/console')

#
# Mounts a sub-app for a Ronin library.
#
# @param [String] name
#   The name of the ronin library.
#
# @param [Hash] options
#   Additional app options.
#
def mount_subapp(name,options)
  library = "ronin-#{name}"

  if Ronin::Installation.libraries.include?(library)
    path = "/#{name}"

    puts "=> Mounting sub-app for #{library} at #{path} ..."
    Padrino.mount(name,options).to(path)
  end
end

mount_subapp('asm', :app_class => 'ASMApp')
mount_subapp('web', :app_class => 'WebApp')
mount_subapp('exploits', :app_class => 'ExploitsApp')
mount_subapp('scanners', :app_class => 'ScannersApp')
