class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      
      t.string :admin_id
      t.string :admin_pw

      t.timestamps null: false
    end
  end
end
