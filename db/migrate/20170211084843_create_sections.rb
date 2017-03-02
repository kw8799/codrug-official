class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      
      t.string :section_title
      t.string :section_content
      t.string :section_background,      default: ""

      t.timestamps null: false
    end
  end
end
