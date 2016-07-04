class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :nombre
      t.text :descripcion
      t.float :sueldo

      t.timestamps null: false
    end
  end
end
