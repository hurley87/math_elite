class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :user_id
      t.string :body

      t.timestamps
    end
  end
end
