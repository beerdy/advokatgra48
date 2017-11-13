class AddImageNameToAdward < ActiveRecord::Migration
  def change
    add_column :adwards, :image_name, :string
  end
end
