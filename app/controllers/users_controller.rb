class UsersController < ApplicationController
  
  get '/signup' do
    erb :"users/signup"
  end

  post '/signup' do
    # binding.pry
    #use form info to create user
    @user = User.create(params["user"])
    #if creation is successful print success message and redirect
    if @user.valid?
      binding.pry
      session["user_id"] = @user.id
      # flash[:success] = "USer created successfully!"
      redirect "/todos"
      #else print generic error message and also redirect
    else
      binding.pry
      # flash[:success] = "Ooops something happened, make sure you fill out all the fields!"
      redirect '/signup'
    end
  end
end
