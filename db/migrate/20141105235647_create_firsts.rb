class CreateFirsts < ActiveRecord::Migration
  def change
    create_table :firsts do |t|
      t.integer :user_id
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
