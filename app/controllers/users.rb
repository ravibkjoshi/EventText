#sign up
get '/users/new' do
@user = User.new
 erb :'users/new'
end  

post '/users' do 
	user = User.create(params[:user])
	if user.valid?
		redirect '/'
	else 
		@errors = ["Invalid Email or Password"]
		erb :'users/new'
	end
end 



get '/users/:id' do
	if current_user
		@user = User.find(params[:id])
		erb :'users/profile'
	else 
		redirect '/'
	end

end 

#log out

delete '/sessions/:id' do

end 