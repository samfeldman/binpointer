class User < ActiveRecord::Base

	validates :password, :email, :username, presence: { message: "Don't forget to fill everything in!" }
	validates :password, confirmation: { message: "Passwords do not match!" }
	validates :password, length: { in: 6..10, message: "Password must be between 6 and 10 characters" }
	validates :email, :username, uniqueness: true

	has_many :points, dependent: :destroy
	has_many :bins, through: :points

	has_many :friendships,
		class_name: "User",
		foreign_key: :friend_id,
		dependent: :destroy

	has_many :originaluserships, 
		class_name: "User",
		foreign_key: :original_user_id,
		dependent: :destroy

	has_many :friends,
		through: :originaluserships,
		source: :friend

	has_many :original_users,
		through: :friendships,
		source: :original_user

end
