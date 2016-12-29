class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :pic_url
      t.integer :phone_number
      t.string :email
      t.references :trainer, foreign_key: true

      t.timestamps
    end
  end
end
