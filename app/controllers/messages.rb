get '/messages/new' do
	@user = current_user
  erb :'messages/new' #show new messages view

end
