class AddFieldnameToTablename < ActiveRecord::Migration[5.0]
  def change
    add_column :rutinas, :nombre, :string
  end
end
