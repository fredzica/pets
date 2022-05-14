class CreatePetImages < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_images do |t|
      t.string :image_url
      t.timestamp :taken_at
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
