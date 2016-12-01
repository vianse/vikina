class CreateResenas < ActiveRecord::Migration
  def change
    create_table :resenas do |t|
      t.text :resena
      t.integer :user_id
      t.integer :servicio_id

      t.timestamps null: false
    end
  end
end
