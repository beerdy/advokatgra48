class AddTopToService < ActiveRecord::Migration
  def change
    add_column :services, :top, :boolean
  end
end
