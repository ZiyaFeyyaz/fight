class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :health_points
      t.integer :attack_power

      t.timestamps
    end
  end
end
