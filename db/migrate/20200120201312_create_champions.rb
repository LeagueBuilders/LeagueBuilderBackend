class CreateChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :description
      t.references :build, null: false, foreign_key: true

      t.timestamps
    end
  end
end
