class CreateVarietals < ActiveRecord::Migration[5.1]
  def change
    create_table :varietals do |t|
      t.string :name
      t.integer :days_to_maturity
      t.references :crop, foreign_key: true

      t.timestamps
    end
  end
end
