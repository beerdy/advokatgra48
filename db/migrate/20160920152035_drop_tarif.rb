class DropTarif < ActiveRecord::Migration
  def change
	drop_table :tarifs
  end
end
