require 'rails_helper'
require 'support/factory_girl.rb'

describe User do
	
	it "has a valid factory" do 
		expect(create(:user)).to be_valid
	end

	describe "validations" do
		
		it "is invalid without a password" do 
			expect(build(:user, password: nil)).to be_invalid
		end

		it "is invalid without an email" do
			expect(build(:user, email: nil)).to be_invalid
		end

		it "is invalid without a username" do
			expect(build(:user, username: nil)).to be_invalid
		end

		it "is invalid with a password confirmation mismatch" do
			expect(build(:user, password_confirmation: "mismatch")).to be_invalid
		end
		
		it "is invalid without a password length less than 6" do
			expect(build(:user, password: "apple")).to be_invalid
		end

		it "is invalid without a password greater than 10" do
			expect(build(:user, password: "bananasaregross")).to be_invalid
		end

		describe "username/email uniqueness" do 
			before :each do
				@newuser = create(:user)
			end

			it "is invalid without username uniqueness" do
				expect(build(:user, username: @newuser.username)).to be_invalid
			end

			it "is invalid without email uniqueness" do
				expect(build(:user, email: @newuser.email)).to be_invalid
			end
		end

	end

	describe "associations" do 
		
		it { should have_many(:points).dependent(:destroy) }

		it { should have_many(:bins).through(:points) }
		
		it { should have_many(:friendships).class_name('Friend').with_foreign_key(:friend_id).dependent(:destroy) }
		
		it { should have_many(:originaluserships).class_name('Friend').with_foreign_key(:original_user_id).dependent(:destroy) }
		
		it { should have_many(:friends).through(:originaluserships).source(:friend) }

		it { should have_many(:original_users).through(:friendships).source(:original_user) }

	end

end





