class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.datetime :show_date
      t.string :cover
      t.string :venue
      t.string :link

      t.timestamps
    end
  end
end
