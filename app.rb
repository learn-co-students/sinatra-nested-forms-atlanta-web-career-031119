require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate_name = params["pirate"]["name"]
      @pirate_height = params["pirate"]["height"]
      @pirate_weight = params["pirate"]["weight"]
      @ship_one_name = params["pirate"]["ships"][0]["name"]
      @ship_one_type = params["pirate"]["ships"][0]["type"]
      @ship_one_booty = params["pirate"]["ships"][0]["booty"]
      @ship_two_name = params["pirate"]["ships"][1]["name"]
      @ship_two_type = params["pirate"]["ships"][1]["type"]
      @ship_two_booty = params["pirate"]["ships"][1]["booty"]
      erb :'pirates/show'
    end

  end
end
