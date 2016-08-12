class CreateRutinas < ActiveRecord::Migration[5.0]
  def change
    create_table :rutinas do |t|
      t.string :imagen
      t.string :musculo
      t.string :descripcion

      t.timestamps
    end
  end
end
