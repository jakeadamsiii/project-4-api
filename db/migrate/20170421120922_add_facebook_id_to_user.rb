class AddFacebookIdToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :facebook_id
    add_column :users, :facebook_id, :bigint
  end
end
