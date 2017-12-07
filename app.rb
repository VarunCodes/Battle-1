require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'crazy super duper secret'
  enable :sessions

  get '/' do
    erb(:index)
    # 'Testing infrastructure working!'
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    p params
    erb(:play)
  end



  run! if app_file == $0
end
