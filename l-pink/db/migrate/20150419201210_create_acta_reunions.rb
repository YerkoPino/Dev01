class CreateActaReunions < ActiveRecord::Migration
  def change
    create_table :acta_reunions do |t|
      t.date :fecha
      t.integer :correlativo
      t.references :proyecto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
