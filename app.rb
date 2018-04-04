require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      # {
      #   "pirate"=>{"name"=>"Bruno", "weight"=>"145", "height"=>"5'10\"",
      #     "ships"=>[{"name"=>"Taqwa", "type"=>"good", "booty"=>"none"},
      #       {"name"=>"quba", "type"=>"good", "booty"=>"none"}
      #      ]
      #   }
      # }
      @pirate = params["pirate"]
      erb :show
    end
  end
end
