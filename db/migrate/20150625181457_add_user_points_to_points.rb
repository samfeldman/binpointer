class AddUserPointsToPoints < ActiveRecord::Migration
  def change
    add_column :points, :user_points, :integer
  end
end
