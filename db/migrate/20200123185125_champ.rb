class Champ < ActiveRecord::Migration[6.0]
  def change
    add_column :builds, :champion, :string
  end
end
