require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'crazy super duper secret'


  get '/' do
    erb(:index)
    # 'Testing infrastructure working!'
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one.name
    @player_two = $player_two.name
    # p params
    erb(:play)
  end

  get '/attack' do
    @player_one = $player_one.name
    @player_two = $player_two.name
    erb(:attack)
    # redirect '/play'
  end

  run! if app_file == $0
end
