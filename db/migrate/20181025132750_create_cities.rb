class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.belongs_to :user
      t.integer :postal_code
      t.string :name
      t.timestamps
    end
  end
end
