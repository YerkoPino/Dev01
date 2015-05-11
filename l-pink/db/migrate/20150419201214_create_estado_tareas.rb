class CreateEstadoTareas < ActiveRecord::Migration
  def change
    create_table :estado_tareas do |t|
      t.string :nombre, limit: 25
      t.string :descripcion, limit: 300

      
    end
  end
end
