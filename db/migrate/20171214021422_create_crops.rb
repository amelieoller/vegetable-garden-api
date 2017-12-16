class CreateCrops < ActiveRecord::Migration[5.1]
  def change
    create_table :crops do |t|
      t.string :name
      t.integer :days_to_maturity
      t.string :image_url
      t.datetime :date_planted
      t.boolean :active
      t.timestamps
    end
  end
end
