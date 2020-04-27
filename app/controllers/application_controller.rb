require_relative '../../config/environment'
require 'pry'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find_by(params)
    unless @user.nil?
      session[:user_id] = @user.id
      redirect '/account'
    else

    end
  end

  get '/account' do

    erb :account
  end

  get '/logout' do

  end


end
