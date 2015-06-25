class RemovePointsFromPoints < ActiveRecord::Migration
  def change
    remove_column :points, :points, :integer
  end
end
