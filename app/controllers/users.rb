#sign up
get '/users/new' do
@user = User.new
 erb :'users/new'
end  

post '/users' do 
	user = User.new(params[:user])
	user.id 
	if user.save
		login(user)
		redirect "/users/#{user.id}"
	else 
		@errors = user.errors.full_messages
		erb :'users/new'
	end
end 



get '/users/:id' do
	p "*" * 80
	p params
	@user = User.find(params[:id])
	if logged_in? && current_user.id == @user.id
		erb :'users/show'
	else 
		redirect '/'
	end

end 

#log out

delete '/sessions/:id' do

end 