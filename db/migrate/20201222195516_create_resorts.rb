class CreateResorts < ActiveRecord::Migration[6.0]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :snow_fall
      t.string :main_parking
      t.string :herm_parking
      t.string :lift_1
      t.string :lift_2
      t.string :lift_3

      t.timestamps
    end
  end
end
