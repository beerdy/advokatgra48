class AddSpecialToService < ActiveRecord::Migration
  def change
    add_column :services, :special, :boolean
  end
end
