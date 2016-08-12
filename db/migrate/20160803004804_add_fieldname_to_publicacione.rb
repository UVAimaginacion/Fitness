class AddFieldnameToPublicacione < ActiveRecord::Migration[5.0]
  def change
    add_column :publicaciones, :tags, :string
  end
end
