class CreateUsuarioTareas < ActiveRecord::Migration
  def change
    create_table :usuario_tareas do |t|
      t.boolean :responsable
      t.references :tarea, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      
    end
  end
end
