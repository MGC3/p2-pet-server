class CreateWeightlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :weightlogs do |t|
      t.decimal :weight
      t.date :date

      t.timestamps
    end
  end
end
