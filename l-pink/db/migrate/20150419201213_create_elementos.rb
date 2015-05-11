class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
      t.string :nombre, limit: 30
      t.string :descripcion, limit: 300
      t.string :estado, limit: 30
      t.string :tipo, limit: 30
      t.date :fecha_compromiso
      t.string :contexto, limit: 300
      t.references :tema, index: true, foreign_key: true
      t.references :elemento, index: true, foreign_key: true

      
    end
  end
end
