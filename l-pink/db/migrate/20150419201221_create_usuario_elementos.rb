class CreateUsuarioElementos < ActiveRecord::Migration
  def change
    create_table :usuario_elementos do |t|
      t.boolean :responsable
      t.references :elemento, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      
    end
  end
end
