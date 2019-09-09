require 'sinatra/base'
require 'sinatra'
require 'capybara'

class Rocky < Sinatra::Base
    enable :sessions
  
    get '/' do
      erb :index
    end
  
    post '/name' do
      session[:player_name] = params[:player_name]
      redirect '/move'
    end

    get '/move' do
      @player_name = session[:player_name]
      erb :move
    end

    post '/rock' do
      session[:player_move] = params[:player_move]
      redirect '/game'
    end

    post '/paper' do
      session[:player_move] = params[:player_move]
      redirect '/game'
    end

    post '/scissors' do
      session[:player_move] = params[:player_move]
      redirect '/game'
    end

    get '/game' do
      @player_move = session[:player_move]
      erb :game
    end
  
    # start the server if ruby file executed directly
    run! if app_file == $0

  end
