get '/login' do 
	erb :'sessions/login'
end 



post '/sessions' do
 @user = User.find_by(email: params[:user][:email])

	if @user && @user.authenticate(params[:user][:password])
		login(@user)
		redirect "/users/#{@user.id}"
	else 
		@errors = ["Invalid username or password"]
		erb :'sessions/login'
	end 

end 

get '/logout' do
   logout
  redirect '/'
end