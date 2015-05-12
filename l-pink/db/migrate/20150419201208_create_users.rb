class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :tipo
      t.string :password_hash
      t.string :password_salt
      t.string :avatar_url
      t.string :identificador
    end
  end
end
