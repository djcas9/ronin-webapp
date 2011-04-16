Ronin::WebApp.controller do

  get :index do
    render 'main/index'
  end

  get :version do
    render 'main/version'
  end

end
