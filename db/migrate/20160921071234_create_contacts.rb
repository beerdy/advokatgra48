class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :phone
      t.string :address
      t.text :description
      t.text :slave
      t.string :image_uid
      t.string :url
      t.text :map

      t.timestamps null: false
    end
  end
end
