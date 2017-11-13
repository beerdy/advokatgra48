class AddTarifToGroup < ActiveRecord::Migration
  def change
    add_reference :groups, :tarif, index: true, foreign_key: true
  end
end
