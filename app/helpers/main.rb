def render_resource(value,template)
  case content_type
  when :html
    render(template)
  when :xml
    value.to_xml
  when :yaml
    value.to_yaml
  when :json
    value.to_json
  end
end

def render_mac_address(mac)
  partial('mac_addresses/mac_address', :object => mac)
end

def render_ip_address(ip)
  partial('ip_addresses/ip_address', :object => ip)
end

def render_host_name(host)
  partial('host_names/host_name', :object => host)
end

def render_address(address)
  case address
  when Ronin::MACAddress
    render_mac_address(address)
  when Ronin::IPAddress
    render_ip_address(address)
  when Ronin::HostName
    render_host_name(address)
  end
end

def render_os(os)
  partial('oses/os', :object => os)
end

def render_os_guess(guess)
  partial('os_guesses/os_guess', :object => os)
end

def render_open_port(open_port)
  partial('open_ports/open_port', :object => open_port)
end

def render_port(port)
  partial('ports/port', :object => port)
end

def render_service(service)
  partial('services/service', :object => service)
end

def render_user_name(user)
  partial('user_names/user_name', :object => user)
end

def render_password(password)
  partial('passwords/password', :object => password)
end

def render_email_address(email)
  partial('email_addresses/email_address', :object => email)
end

def render_url(url)
  partial('urls/url', :object => url)
end

def render_credential(cred)
  partial('credentials/credential', :object => cred)
end

def render_service_credential(cred)
  partial('service_credentials/service_credential', :object => cred)
end

def render_web_credential(cred)
  partial('web_credentials/web_credential', :object => cred)
end
