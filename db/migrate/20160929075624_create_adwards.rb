class CreateAdwards < ActiveRecord::Migration
  def change
    create_table :adwards do |t|
      t.string :title
      t.text :description
      t.text :slave
      t.string :image_uid
      t.string :url

      t.timestamps null: false
    end
  end
end
