class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :description
      t.timestamp :birth_date
      t.decimal :weight_kg, precision: 2, scale: 2

      t.timestamps
    end
  end
end
