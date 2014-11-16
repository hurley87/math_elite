class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :name
      t.text :description
      t.string :youtube
      t.string :length
      t.integer :total
      t.integer :wrong

      t.timestamps
    end
  end
end
