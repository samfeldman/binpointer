require 'rails_helper'

describe Friend do 

	describe "associations" do 
		
		it { should belong_to(:original_user).class_name("User").with_foreign_key(:original_user_id) }

		it { should belong_to(:friend).class_name("User").with_foreign_key(:friend_id) }

	end

end