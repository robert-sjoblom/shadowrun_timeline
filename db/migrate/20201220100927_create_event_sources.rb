class CreateEventSources < ActiveRecord::Migration[6.0]
  def change
    create_table :event_sources, id: :uuid do |t|
      t.references :source, null: false, foreign_key: true, type: :uuid
      t.references :event, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
