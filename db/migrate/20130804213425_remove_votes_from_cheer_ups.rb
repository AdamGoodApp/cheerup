class RemoveVotesFromCheerUps < ActiveRecord::Migration
  def up
    remove_column :cheer_ups, :votes
  end

  def down
    add_column :cheer_ups, :votes, :integer
  end
end
