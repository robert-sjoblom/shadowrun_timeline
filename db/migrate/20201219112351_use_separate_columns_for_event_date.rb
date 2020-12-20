class UseSeparateColumnsForEventDate < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :year, :integer
    add_column :events, :month, :integer
    add_column :events, :day, :integer

    remove_column :events, :date
    remove_column :events, :date_accuracy
  end
end
