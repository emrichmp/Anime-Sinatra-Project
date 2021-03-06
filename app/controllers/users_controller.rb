class UsersController < ApplicationController
    #renders login page(form)
    get '/login' do
        puts flash
        erb :login
    end

    #recieve login form and find user to log them in (create session)
    #find and authenticate user
    #log them in
    #redirect user to their "home page"
    post '/login' do
        #@user = User.find_by(username: params[:username])
        # if @user != nil && params[:username] != "" && params[:password] != ""
        #     if @user.authenticate(params[:password])
        #         session[:user_id] = @user.id
        #         redirect "users/#{@user.id}"
        #     else
        #         #tell user its invalid and redirect to /login page
        #         flash[:message] = "Your credentials were invalid. Please try to login again."
        #         redirect '/login'
        #     end
        # else
        #     flash[:message] = "Your credentials were invalid. Please try to login again."
        #     redirect '/login'
        # end
        if params[:username] == "" || params[:password] == ""
            flash[:message] = "Your credentials were invalid. Please try to login again."
            redirect '/login'
        end
        @user = User.find_by(username: params[:username])
        if @user != nil && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect "users/#{@user.id}"
        else
            flash[:message] = "Your credentials were invalid. Please try to login again."
            redirect '/login'
        end
    end



    #render sign up form
    get '/signup' do
        erb :signup
    end

    post '/users' do
        #here we will create new user
        #User to db
        @potential_user = User.find_by(username: params[:username])
        if @potential_user == nil
            if params[:username] != "" && params[:password] != ""
                @user = User.create(params)
                session[:user_id] = @user.id
                redirect "users/#{@user.id}"
            else
                flash[:message] = "Your credentials were invalid."
                redirect '/signup'
            end
        else
            flash[:message] = "This username already exists."
            redirect '/signup'
        end
    end

    get '/users/:id' do
        @user = User.find_by(id: params[:id])
        erb :show
    end

    get '/logout' do
        session.clear
        redirect '/'
    end
end