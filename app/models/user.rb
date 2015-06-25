class User < ActiveRecord::Base

	validates :password, :email, :username, presence: true
	validates :password, confirmation: true
	validates :password, length: { in: 6..10 }
	validates :email, :username, uniqueness: true

	has_many :user_points
	has_many :bins, through :points

end
