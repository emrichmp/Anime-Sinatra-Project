require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "Anime_Sinatra_App"
  end

  get "/" do
    erb :welcome
  end

end
