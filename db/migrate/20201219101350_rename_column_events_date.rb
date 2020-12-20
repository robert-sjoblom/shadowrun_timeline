class RenameColumnEventsDate < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :date, :raw_date
  end
end
