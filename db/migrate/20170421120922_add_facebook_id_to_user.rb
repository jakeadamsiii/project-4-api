class AddFacebookIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :facebook_id, :bigint
  end
end
