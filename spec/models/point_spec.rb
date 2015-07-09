require 'rails_helper'

describe Point do 

	describe "associations" do 
		
		it { should belong_to(:user) }

		it { should belong_to(:bin) }

	end

end