require 'rails_helper'

describe Bin do 

	describe "associations" do 
		
		it { should have_many(:points) }

		it { should have_many(:users).through(:points) }

	end

end