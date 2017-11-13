class AddImageNameToSlider < ActiveRecord::Migration
  def change
    add_column :sliders, :image_name, :string
  end
end
