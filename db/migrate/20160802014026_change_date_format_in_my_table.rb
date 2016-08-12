class ChangeDateFormatInMyTable < ActiveRecord::Migration[5.0]
  def change
    change_column :rutinas, :descripcion , :text
  end
end
