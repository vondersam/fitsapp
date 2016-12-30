class DeleteTrainerRefToUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.remove :trainer_id
    end
  end
end
