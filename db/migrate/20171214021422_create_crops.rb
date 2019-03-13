class CreateCrops < ActiveRecord::Migration[5.1]
  def change
    create_table :crops do |t|
      t.string :name
      t.integer :daysToMaturity
      t.string :imageUrl
      t.datetime :datePlanted
      t.boolean :active
      t.timestamps
    end
  end
end
