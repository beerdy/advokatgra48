class AddSeriousToService < ActiveRecord::Migration
  def change
    add_column :services, :serious, :boolean
  end
end
