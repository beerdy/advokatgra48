class AddTarifIdToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :tarif_id, :integer
  end
end
