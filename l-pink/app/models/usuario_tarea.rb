class UsuarioTarea < ActiveRecord::Base
  belongs_to :tarea
  belongs_to :user
end
