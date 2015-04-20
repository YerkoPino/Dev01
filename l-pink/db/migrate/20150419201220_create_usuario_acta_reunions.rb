class CreateUsuarioActaReunions < ActiveRecord::Migration
  def change
    create_table :usuario_acta_reunions do |t|
      t.references :acta_reunion, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :secretario

      t.timestamps null: false
    end
  end
end
