class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      t.integer :game_id # this is our foreign key
      t.timestamps
    end
  end
end

class Review < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
end
