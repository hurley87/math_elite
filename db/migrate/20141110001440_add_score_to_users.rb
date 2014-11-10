class AddScoreToUsers < ActiveRecord::Migration
  def change
  	add_column :firsts, :score, :string
  end
end
