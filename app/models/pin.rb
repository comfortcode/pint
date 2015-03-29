class Pin < ActiveRecord::Base
	belongs_to :user
	
	validates_presence_of :user_id #can only create a pin with a user

	has_attached_file :image , :styles => { :medium => "300x300>", :thumb => "100x100>" }
end