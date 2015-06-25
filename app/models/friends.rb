class Friends < ActiveRecord::Base
	
	belongs_to :original_user,
		class_name: "User", 
		foreign_key: :original_user_id

	belongs_to :friend,
		class_name: "User",
		foreign_key: :friend_id
		
end
