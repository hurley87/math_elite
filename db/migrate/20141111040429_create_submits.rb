class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.integer :user_id
      t.string :score

      t.timestamps
    end
  end
end
