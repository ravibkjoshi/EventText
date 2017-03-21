get '/contacts/new' do
  erb :'/contacts/new'
end
post '/contacts/new' do
	@contact = Contact.new(params[:contact])
	@contact.save
	@user = current_user
	@user.contacts << @contact 

	redirect  :"/users/#{session['user_id']}"
end 


get '/contacts/:id/edit' do
	@user = current_user
	@contact =  @user.contacts.find(params[:id])
	if @contact 
		erb :'contacts/edit'
	else
		redirect  :"/users/#{session['user_id']}"

	end 

end


put '/contacts/:id' do

  	@user = current_user
	@contact =  @user.contacts.find(params[:id])
	@contact.assign_attributes(params[:contact])
	if @contact.save
		redirect  :"/users/#{session['user_id']}"
	else
		erb :'contacts/edit'
	end 
end


delete '/contacts/:id' do

  @user = current_user
  @contact =  @user.contacts.find(params[:id])

   @contact.destroy
   redirect  :"/users/#{session['user_id']}"

end


