class AddAllAgesToShows < ActiveRecord::Migration
  def change
    add_column :shows, :all_ages, :bool
  end
end
