class ChangeHeigthToBeIntegerInPetHistory2 < ActiveRecord::Migration[5.2]
  def up
    change_column :pet_histories, :heigth, :integer
  end

  def down
    change_column :pet_histories, :heigth, :string
  end
end
