class CreateAboutwes < ActiveRecord::Migration
  def change
    create_table :aboutwes do |t|
      
      t.string :title_left
      t.string :title_right
      t.string :icon_class
      t.string :sub_title
      t.string :sub_content
      t.string :sub_picture_url, default: ""
      t.string :link_id
      t.string :interact_factor1
      t.string :interact_factor2
      t.string :alt
      t.string :language
      t.integer :data_percent

      t.timestamps null: false
    end
  end
end
