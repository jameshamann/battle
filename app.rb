require 'sinatra/base'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_one = Player.new(params[:player_one])
    player_two = Player.new(params[:player_two])
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attack
    @attacked = true
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
