class CorrectPetWeightPrecision < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :weight_kg, :decimal, :precision => 5, :scale => 2
  end
end
