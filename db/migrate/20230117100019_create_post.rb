# frozen_string_literal: true

class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :Title
      t.text :Text
      t.integer :comments_counter
      t.integer :likes_counter

      t.timestamps
    end
  end
end
