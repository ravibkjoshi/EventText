get '/contacts/new' do
	erb :'/contacts/new'
end

post '/contacts/new' do
	@contact = Contact.new(params[:contact])
	@user = current_user
  	if @user && logged_in?
		@contact.save
		@user.contacts << @contact 
		redirect  :"/users/#{session['user_id']}"
	else 
		redirect :'/contacts/new'
	end 
end 


get '/contacts/:id/edit' do
	@user = current_user
	@contact =  @user.contacts.find(params[:id])
	if @contact && logged_in?
		erb :'contacts/edit'
	else
		redirect  :"/users/#{session['user_id']}"

	end 

end


put '/contacts/:id' do

	@user = current_user
	@contact =  @user.contacts.find(params[:id])
	@contact.assign_attributes(params[:contact])
	if @contact && logged_in?
		@contact.save
		redirect  :"/users/#{session['user_id']}"
	else
		erb :'contacts/edit'
	end 
end


delete '/contacts/:id' do
	@user = current_user
	if @user && logged_in?
		@contact =  @user.contacts.find(params[:id])
		@contact.destroy
		redirect  :"/users/#{session['user_id']}"
	else
		redirect  :"/"
	end 

end


