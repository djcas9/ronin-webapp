def render_address(address)
  template = case address
             when Ronin::MACAddress
               'mac_addresses/mac_address'
             when Ronin::IPAddress
               'ip_addresses/ip_address'
             when Ronin::HostName
               'host_names/host_name'
             end

  partial(template, :object => address)
end
