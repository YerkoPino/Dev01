class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :nombre, limit: 30
      t.string :descripcion, limit: 300
      t.references :estado_tarea, index: true, foreign_key: true
      t.references :elemento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
