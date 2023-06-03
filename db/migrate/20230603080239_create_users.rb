class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end
  end
end

class User < ActiveRecord::Base
  has_many :reviews
  has_many :games, through: :reviews
end