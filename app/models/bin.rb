class Bin < ActiveRecord::Base
	has_many :points
	has_many :users, through: :points
end
