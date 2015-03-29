class Pin < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :user_id #can only create a pin with a user
end