class CreateContactUsForms < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_us_forms do |t|
      t.string :email, null:false
      t.text :message, null:false

      t.timestamps
    end
  end
end
