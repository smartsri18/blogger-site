class RemoveColumnFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :password_digest, :string
    remove_column :users, :password_reset_token, :string
  end
end
