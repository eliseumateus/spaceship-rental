class AddHotdealToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :hotdeal, :boolean
  end
end
