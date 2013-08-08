class ValidateRatingOnCheerups < ActiveRecord::Migration
  def change
    remove_column :cheer_ups, :rating
    add_column :cheer_ups, :rating, :integer, :null => false, :default => 0
  end
end
