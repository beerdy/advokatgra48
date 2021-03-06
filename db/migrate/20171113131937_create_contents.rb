class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.text :slave
      t.string :image1_uid
      t.string :image1_name
      t.string :url
      t.integer :sort

      t.timestamps null: false
    end
  end
end
