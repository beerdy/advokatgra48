class AddSlaveToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :slave, :text
  end
end
