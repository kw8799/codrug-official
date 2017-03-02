class CreateOurteams < ActiveRecord::Migration
  def change
    create_table :ourteams do |t|
      
      t.string :img_url,  default:""
      t.string :name
      t.string :major
      t.string :saying
      t.string :sns_1,    default:"#"
      t.string :sns_2,    default:"#"
      t.string :sns_3,    default:"#"
      t.string :sns_4,    default:"#"
      t.string :sns_5,    default:"#"

      t.timestamps null: false
    end
  end
end
