class CreateBettings < ActiveRecord::Migration[6.1]
  def change
    create_table :bettings do |t|
      t.string :match
      t.string :team

      t.timestamps
    end
  end
end
