class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :nombre, limit: 30
      t.string :descripcion, limit: 300
      t.string :estado, limit: 30
      t.references :acta_reunion, index: true, foreign_key: true

      
    end
  end
end
