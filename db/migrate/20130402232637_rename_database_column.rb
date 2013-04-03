class RenameDatabaseColumn < ActiveRecord::Migration
  def up
    rename_column :shows, :show_date, :date
    rename_column :shows, :name, :bands
  end

  def down
    rename_column :shows, :date, :show_date 
    rename_column :shows, :bands, :name
  end
end
