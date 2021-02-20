class AnimeEntriesController < ApplicationController
    #get anime_entries/new to render form to create animes
    get '/anime_entries/new' do
        erb :'/anime_entries/new'
    end
    #post anime_entries to create a new anime
    post '/anime_entries' do
        if !logged_in?
            redirect '/'
        end
        if params[:name] != ""
            @anime = Anime.create(name: params[:name], fav_character: params[:fav_character], rating: params[:rating], user_id: current_user.id)
            redirect "/anime_entries/#{@anime.id}"
        else
            redirect '/anime_entries/new'
        end
    end
    #show route for a anime entry
    

    #index route for all anime entries
    
end