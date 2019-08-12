require 'sinatra/base'
require 'sinatra'

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

    post '/move' do
      session[:player_move] = params[:player_move]
      redirect '/result'
    end

    get '/result' do
      @player_move = session[:player_move]
      erb :result
    end

    post '/result' do
      erb :result
    end
  
    # start the server if ruby file executed directly
    run! if app_file == $0
  end