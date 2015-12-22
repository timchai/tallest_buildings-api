class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :location
      t.string :height

      t.timestamps null: true
    end
  end
end
