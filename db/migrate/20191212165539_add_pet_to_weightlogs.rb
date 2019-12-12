class AddPetToWeightlogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :weightlogs, :pet, foreign_key: true
  end
end
