class UsersController < ApplicationController
    #renders login page(form)
    get '/login' do
        erb :login
    end

    #recieve login form and find user to log them in (create session)
    #find and authenticate user
    #log them in
    #redirect user to their "home page"
    post '/login' do
        @user = User.find_by(username: params[:username])
        if @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect "users/#{@user.id}"
        else
            #tell user its invalid and redirect to /login page
        end
    end
    #render sign up form
    get '/signup' do
        erb :signup
    end

    post '/users' do
        #here we will create new user
        #User to db
        if params[:username] != "" && params[:password] != ""
            @user = User.create(params)
            redirect "users/#{@user.id}"
        else

        end
    end

    get '/users/:id' do
        @user = User.find_by(id: params[:id])
        erb :show
    end
end