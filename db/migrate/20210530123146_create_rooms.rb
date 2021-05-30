# frozen_string_literal: true

class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :description
      t.string :room_number
      t.references :blueprint, null: false, foreign_key: true

      t.timestamps
    end
  end
end
