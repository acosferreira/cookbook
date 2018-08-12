class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.references :kind, foreign_key: true
      t.string :name
      t.text :how_to_do
      t.time :duration
      t.timestamps
    end
  end
end
