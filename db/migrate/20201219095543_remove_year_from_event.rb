class RemoveYearFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :year
  end
end
