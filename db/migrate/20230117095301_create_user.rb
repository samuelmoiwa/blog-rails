# frozen_string_literal: true

class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Photo
      t.text :Bio
      t.integer :posts_counter

      t.timestamps
    end
  end
end
