class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      
      t.string :svc_title
      t.string :svc_content
      t.string :svc_link,     default: "#"
      t.string :pic_url,      default: ""

      t.timestamps null: false
    end
  end
end
