class UsuarioActaReunion < ActiveRecord::Base
  belongs_to :acta_reunion
  belongs_to :user
end
