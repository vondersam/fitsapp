class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.string :meal
      t.string :exercise
      t.string :meditation

      t.timestamps
    end
  end
end
