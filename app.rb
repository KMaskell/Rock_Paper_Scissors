require 'sinatra/base'
require 'sinatra'

class Rocky < Sinatra::Base
    enable :sessions
  
    get '/' do
      erb :index
    end
  
    post '/name' do
      session[:player_name] = params[:player_name]
      redirect '/name'
    end
  
    get '/name' do
      @player_name = session[:player_name]
      erb :name
    end

    post '/move' do
      session[:player_move] = params[:player_move]
      redirect '/play'
    end

    get '/play' do
      @player_move = session[:player_move]
      erb :play
    end
  
    # start the server if ruby file executed directly
    run! if app_file == $0
  end