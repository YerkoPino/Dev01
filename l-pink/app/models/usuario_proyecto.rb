class UsuarioProyecto < ActiveRecord::Base
  belongs_to :proyecto
  belongs_to :user
  validates :user_id, :presence => true, :uniqueness => { :scope => :proyecto_id, :message => "ya esta agregado al proyecto"}  
  
end
