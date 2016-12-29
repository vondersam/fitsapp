class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :pic_url
      t.integer :phone_number
      t.string :email

      t.timestamps
    end
  end
end
