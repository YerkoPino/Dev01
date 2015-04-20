class UsuarioElemento < ActiveRecord::Base
  belongs_to :elemento
  belongs_to :user
end
