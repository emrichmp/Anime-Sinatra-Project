class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :name
      t.string :fav_character
      t.integer :rating
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
