require 'ronin/url'

App.controllers :urls do

  provides :html, :xml, :yaml, :json

  get :index do
    @urls = URL.all

    render_resource @urls, 'urls/index'
  end

  get :show, :map => '/urls/:id' do
    @url = URL.get(params[:id])

    render_resource @url, 'urls/show'
  end

end
