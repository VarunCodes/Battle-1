require 'sinatra/base'
# set :session_secret, 'super secret'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
    # 'Testing infrastructure working!'
  end

  post '/names' do
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    puts params
    erb(:play)
  end

  get '/play' do
    
  end



  run! if app_file == $0
end
