class AddOriginalUserIdToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :original_user_id, :integer
  end
end
