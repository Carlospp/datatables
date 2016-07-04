class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nombre
      t.date :fecnac
      t.text :direccion
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
