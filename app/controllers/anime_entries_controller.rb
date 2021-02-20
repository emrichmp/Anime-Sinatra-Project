class AnimeEntriesController < ApplicationController
    #get anime_entries/new to render form to create animes
    get '/anime_entries/new' do
        erb :'/anime_entries/new'
    end
    #post anime_entries to create a new anime
    post '/anime_entries' do

    end
    #show route for a anime entry

    #index route for all anime entries
    
end