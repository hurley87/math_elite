class AddLevelIdToSubmit < ActiveRecord::Migration
  def change
  	add_column :submits, :level_id, :integer
  end
end
