class Relationship < ActiveRecord::Base
  # Remember to create a migration!\
  belongs_to :user
  belongs_to :contact
end
