class AddUserFieldToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :user, :string
  end
end
