class AddDatetimeAccuracy < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :raw_date, :date
    add_column :events, :date_accuracy, :integer
  end
end
