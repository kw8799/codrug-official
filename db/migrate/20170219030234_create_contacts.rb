class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      
      t.string :line_num1
      t.string :line_num2
      t.string :line_num3
      t.string :line_num4
      t.string :sns_link
      t.string :sns_class

      t.timestamps null: false
    end
  end
end
