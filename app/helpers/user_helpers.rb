helpers do 

	def login(user)
		session[:user_id] = user.id
	end 

	def logout
		session[:user_id] = nil
	end 

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end 

	def logged_in?
		!!current_user
	end 
end 