Ronin::WebApp.controllers :campaigns do

  provides :html, :xml, :yaml, :json

  get :index, do
    @campaigns = Campaign.all

    render_resource @campaigns, 'campaigns/index'
  end

  get :show, :map => '/campaigns/:id', do
    @campaign = Campaign.get(params[:id])

    render_resource @campaigns, 'campaigns/show'
  end

  get :new do
    @campaign = Campaign.new

    render 'campaigns/new'
  end

  post :create, :with => [:name, :description] do
    @campaign = Campaign.new(params)

    if @campaign.save
      redirect_to url_for(:campaigns, :show, @campaign.id)
    else
      render 'campaigns/new'
    end
  end
end
