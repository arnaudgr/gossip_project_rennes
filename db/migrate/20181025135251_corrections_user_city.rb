class CorrectionsUserCity < ActiveRecord::Migration[5.2]
  def change

    remove_column :cities, :user_id, :boolean
    add_reference :users, :city, foreign_key: true

  end
end
