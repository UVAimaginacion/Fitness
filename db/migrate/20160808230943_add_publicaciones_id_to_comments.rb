class AddPublicacionesIdToComments < ActiveRecord::Migration[5.0]
  def change
      add_reference :comments, :publicacione, index: true
  end
end
