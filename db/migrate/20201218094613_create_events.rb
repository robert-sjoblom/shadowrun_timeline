# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events, id: :uuid do |t|
      t.integer :year
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
