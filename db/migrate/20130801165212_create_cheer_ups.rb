class CreateCheerUps < ActiveRecord::Migration
  def change
    create_table :cheer_ups do |t|
      t.integer :user_id
      t.string :image_upload
      t.string :sound_upload
      t.integer :rating
      t.integer :votes
      t.string :content
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
