require 'ronin/ip_address'

App.controllers :ip_addresses do

  provides :html, :xml, :yaml, :json

  get :index do
    @ip_addresses = IPAddress.all

    render_resource @ip_addresses, 'ip_addresses/index'
  end

  get :show, :map => '/ip_addresses/:address' do
    @ip_address = IPAddress[params[:address]]

    render_resource @ip_address, 'ip_addresses/show'
  end

  get :lookup do
    render 'ip_addresses/lookup'
  end

  post :lookup, :with => :ip_address do
    @host_names = IPAddress.lookup(params[:ip_address])

    render_resource @host_names, 'host_names/index'
  end

end
