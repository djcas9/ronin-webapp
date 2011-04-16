Ronin::WebApp.controllers :passwords do

  provides :html, :xml, :yaml, :json

  get :index do
    @passwords = Password.all

    render_resource @passwords, 'passwords/index'
  end

  get :show, :map => '/passwords/:id' do
    @password = Password.get(params[:id])

    render_resource @password, 'password/show'
  end

end
