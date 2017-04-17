get '/messages/new' do
	@user = current_user
  erb :'messages/new' #show new messages view

end
post '/messages' do
  
  @user = current_user
  @selected_contacts = params[:numbers]

  
  p @selected_contacts.class
  p params
  @client = Twilio::REST::Client.new ENV['account_sid'], ENV['auth_token']

  # @contacts.each do |contact|
  # 	contact.phone_number.internationalized_phone_number
  # end

	@selected_contacts.each do |contact|  
	  @client.messages.create(
	  from: '+14083354139 ',
	   to: internationalized_phone_number(contact),
	  body: "#{params[:message]} From: EventText Client"
)	end

end

