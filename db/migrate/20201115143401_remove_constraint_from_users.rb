class RemoveConstraintFromUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :user_type, :integer, null: true
  end
end
