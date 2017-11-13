class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :title
      t.text :description
      t.text :slave
      t.string :image_uid
      t.string :url

      t.timestamps null: false
    end
  end
end
