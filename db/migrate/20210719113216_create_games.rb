class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :platform
      t.integer :price
      t.timestamps
    end
  end
end

class Game < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
end