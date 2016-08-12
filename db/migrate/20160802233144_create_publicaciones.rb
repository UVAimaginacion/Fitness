class CreatePublicaciones < ActiveRecord::Migration[5.0]
  def change
    create_table :publicaciones do |t|
      t.string :nombre
      t.text :texto

      t.timestamps
    end
  end
end
