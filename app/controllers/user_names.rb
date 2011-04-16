require 'ronin/user_name'

App.controllers :user_names do

  provides :html, :xml, :yaml, :json

  get :index do
    @user_names = UserName.all

    render_resource @user_names, 'user_names/index'
  end

  get :show, :map => '/user_names/:id' do
    @user_name = UserName.get(params[:id])

    render_resource @user_name, 'user_name/show'
  end

end
