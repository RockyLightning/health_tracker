class CreateCals < ActiveRecord::Migration
  def change
    create_table :cals do |t|
      t.integer :cals_consumed
      t.date :date

      t.timestamps null: false
    end
  end
end
