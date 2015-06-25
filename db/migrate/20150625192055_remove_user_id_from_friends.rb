class RemoveUserIdFromFriends < ActiveRecord::Migration
  def change
    remove_column :friends, :user_id, :integer
  end
end
