class UsersController < ApplicationController
    #renders login page(form)
    get '/login' do
        erb :login
    end

    get '/signup' do

    end
end