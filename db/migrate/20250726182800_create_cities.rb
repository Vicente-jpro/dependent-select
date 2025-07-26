class CreateCities < ActiveRecord::Migration[7.2]
  def change
    create_table :cities do |t|
      t.string :name_city
      t.references :province, null: false, foreign_key: true

      t.timestamps
    end
  end
end
