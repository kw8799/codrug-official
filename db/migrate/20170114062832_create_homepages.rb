class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      
      t.boolean :active, default: false
      t.string :heading
      t.string :animated
      t.string :button
      t.string :ani_heading
      t.string :ani_animated
      t.string :ani_button
      t.string :link
      t.string :picture_url,   default: ""

      t.timestamps null: false
    end
  end
end
