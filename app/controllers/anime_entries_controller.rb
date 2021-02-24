class AnimeEntriesController < ApplicationController

    get '/anime_entries' do
        @all_animes = Anime.all
        erb :'anime_entries/index'
    end

    #get anime_entries/new to render form to create animes
    get '/anime_entries/new' do
        erb :'/anime_entries/new'
    end
    #post anime_entries to create a new anime
    post '/anime_entries' do
        if !logged_in?
            redirect '/'
        end
        if params[:name] != "" && params[:fav_character] != "" && params[:rating] != ""
            @anime = Anime.create(name: params[:name], fav_character: params[:fav_character], rating: params[:rating], user_id: current_user.id)
            redirect "/anime_entries/#{@anime.id}"
        else
            flash[:message] = "Looks like you submitted a blank field! Try again!"
            redirect '/anime_entries/new'
        end
    end
    #show route for a anime entry
    get '/anime_entries/:id' do
        @anime = Anime.find(params[:id])
        erb :'/anime_entries/show'
    end

    #this route will send us to anime_entries./edi.erb which will render edit form
    get '/anime_entries/:id/edit' do
        @anime = Anime.find(params[:id])
    #     if logged_in?
    #         if @anime.user == current_user
    #             erb :'/anime_entries/edit'
    #         else
    #             redirect "/"
    #         end
    #     else
    #         redirect '/'
    #     end
    #   end
        if !logged_in? || @anime.user != current_user
            redirect '/'
        end
        erb :'/anime_entries/edit'
    end
      
    #This action finds and modifies anime entry
    patch '/anime_entries/:id' do
        @anime = Anime.find(params[:id])
        if logged_in?
            if @anime.user == current_user && params[:name] != "" && params[:fav_character] != "" && params[:rating] != ""
                @anime.update(name: params[:name], fav_character: params[:fav_character], rating: params[:rating])
                redirect "/anime_entries/#{@anime.id}"
            else
                flash[:message] = "Looks like you submitted a blank field! Try again!"
                redirect "/anime_entries/#{@anime.id}/edit"
            end
        else
            redirect '/'
        end
    end

    delete '/anime_entries/:id' do
        @anime = Anime.find(params[:id])
        if logged_in? && @anime.user == current_user
            @anime.destroy
            redirect '/anime_entries'
        else
            redirect '/'
        end
    end
    
end