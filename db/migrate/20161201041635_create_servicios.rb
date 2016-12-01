class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :titulo
      t.string :descripcion
      t.text :imagen
      t.string :lon
      t.string :lat
      t.string :direccion
      t.integer :cp
      t.string :telefono
      t.string :correo
      t.string :whatsapp
      t.float :calificacion
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
