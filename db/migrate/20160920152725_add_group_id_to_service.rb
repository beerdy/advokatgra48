class AddGroupIdToService < ActiveRecord::Migration
  def change
    add_column :services, :group_id, :integer
  end
end
