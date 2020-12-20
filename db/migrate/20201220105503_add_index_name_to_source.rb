class AddIndexNameToSource < ActiveRecord::Migration[6.0]
  def change
    add_index :sources, [:name], unique: true
  end
end
