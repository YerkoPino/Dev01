class CreateUsuarioProyectos < ActiveRecord::Migration
  def change
    create_table :usuario_proyectos do |t|
      t.references :proyecto, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      
    end
  end
end
