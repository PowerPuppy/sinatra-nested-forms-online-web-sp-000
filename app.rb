require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :"pirates/index"
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      @pirate = Pirate.new(params)
      params[:pirate][:ships].each { |ship| Ship.new(ship) }
      @ships = Ship.all
      erb :"pirates/show"
    end
  end
end
