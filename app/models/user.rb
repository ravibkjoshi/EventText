class User < ActiveRecord::Base
include BCrypt

validates :email, :password, :username, presence: true
validates :email, :username, uniqueness: true 
has_many :relationships
has_many :contacts, through: :relationships

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end 

  def authenticate(password_attempt)
  	self.password == password_attempt
  end 
  # Remember to create a migration!
end
