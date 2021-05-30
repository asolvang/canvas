# frozen_string_literal: true

class CreateBlueprints < ActiveRecord::Migration[6.1]
  def change
    create_table :blueprints do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
