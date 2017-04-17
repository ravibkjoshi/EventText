class Contact < ActiveRecord::Base
	validates :first_name, :last_name, :phone_number, presence: true
	has_many :relationships
	has_many :users, through: :relationships 
  # Remember to create a migration!

  def internationalized_phone_number(phone_number)
  	"+1#{phone_number}"
  end
end
