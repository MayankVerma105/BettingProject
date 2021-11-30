class CreateMatchids < ActiveRecord::Migration[6.1]
  def change
    create_table :matchids do |t|
      t.string :points
      t.string :matchid

      t.timestamps
    end
  end
end
