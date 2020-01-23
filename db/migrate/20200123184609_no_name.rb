class NoName < ActiveRecord::Migration[6.0]
  def change
    remove_column :builds, :name
    add_column :builds, :inventory, :string
  end
end
