class Pin < ActiveRecord::Base
	belongs_to :user
	
	validates_presence_of :user_id #can only create a pin with a user

	has_attached_file :image , :styles => { :medium => "300x300>", :thumb => "100x100>" }
	do_not_validate_attachment_file_type :image

	#validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end