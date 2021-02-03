class ChangeHeigthToBeIntegerInPetHistory < ActiveRecord::Migration[5.2]
  def up
    change_column :pet_histories, :heigth, :string
  end

  def down
    change_column :pet_histories, :heigth, :integer
  end
end
