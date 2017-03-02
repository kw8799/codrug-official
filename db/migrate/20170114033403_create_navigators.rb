class CreateNavigators < ActiveRecord::Migration
  def change
    create_table :navigators do |t|
      
      t.string :navi_name1
      t.string :navi_name2
      t.string :navi_name3
      t.string :navi_name4
      t.string :navi_name5
      t.string :navi_name6
      t.string :navi_name7
      t.string :navi_name8

      t.timestamps null: false
    end
  end
end
