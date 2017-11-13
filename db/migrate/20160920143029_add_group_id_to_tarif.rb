class AddGroupIdToTarif < ActiveRecord::Migration
  def change
    add_column :tarifs, :group_id, :integer
  end
end
