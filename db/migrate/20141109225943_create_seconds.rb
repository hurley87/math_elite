class CreateSeconds < ActiveRecord::Migration
  def change
    create_table :seconds do |t|
      t.integer :user_id
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
