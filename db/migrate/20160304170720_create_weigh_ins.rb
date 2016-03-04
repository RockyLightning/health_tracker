class CreateWeighIns < ActiveRecord::Migration
  def change
    create_table :weigh_ins do |t|
      t.decimal :weight
      t.date :date

      t.timestamps null: false
    end
  end
end
