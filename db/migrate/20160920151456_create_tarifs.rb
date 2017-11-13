class CreateTarifs < ActiveRecord::Migration
  def change
    create_table :tarifs do |t|
      t.references :group, index: true, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
