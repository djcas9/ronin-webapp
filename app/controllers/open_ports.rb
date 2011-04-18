require 'ronin/open_port'

App.controllers :open_ports do

  provides :html, :xml, :yaml, :json

  get :index do
    @open_ports = OpenPort.all

    render_resource @open_ports, '/open_ports/index'
  end

  get :show, :map => '/open_ports/:id' do
    @open_port = OpenPort.get(params[:id])

    render_resource @open_port, '/open_ports/show'
  end

end
