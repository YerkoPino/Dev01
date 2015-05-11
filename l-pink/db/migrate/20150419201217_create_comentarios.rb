class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :descripcion, limit: 300
      t.references :tarea, index: true, foreign_key: true

      
    end
  end
end
