class RemoveTarifIdToGroup < ActiveRecord::Migration
  def change
    remove_column :groups, :tarif_id, :integer
  end
end
