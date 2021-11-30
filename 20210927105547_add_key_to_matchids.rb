class AddKeyToMatchids < ActiveRecord::Migration[6.1]
  def change
    add_reference :matchids, :bettings, null: false, foreign_key: true
  end
end
