Ronin::WebApp.controllers :email_addresses do

  provides :html, :xml, :yaml, :json

  get :index do
    @email_addresses = EmailAddress.all

    render_resource @email_addresses, 'email_addresses/index'
  end

  get :show, :map => '/email_addresses/:id' do
    @email_address = EmailAddress.get(params[:id])

    render_resource @email_address, 'email_addresses/show'
  end

end
