class CreatePlantings < ActiveRecord::Migration[5.1]
  def change
    create_table :plantings do |t|
      t.datetime :date_planted
      t.boolean :active
      t.references :crop, foreign_key: true
      t.references :varietal, foreign_key: true

      t.timestamps
    end
  end
end
