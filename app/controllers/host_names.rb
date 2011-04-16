Ronin::WebApp.controllers :host_names do

  provides :html, :xml, :yaml, :json

  get :index do
    @host_names = HostName.all

    render_resource @host_names, 'host_names/index'
  end

  get :show, :map => '/host_names/:address' do
    @host_name = HostName[params[:address]]

    render_resource @host_name, 'host_names/show'
  end

  get :lookup do
    render 'host_names/lookup'
  end

  post :lookup, :with => :host_name do
    @ip_addresses = IPAddress.lookup(params[:host_name])

    render_resource @ip_addresses, 'ip_addresses/index'
  end

end
