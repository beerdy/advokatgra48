class RemoveTarifFromGroup < ActiveRecord::Migration
  def change
    remove_reference :groups, :tarif, index: true, foreign_key: true
  end
end
