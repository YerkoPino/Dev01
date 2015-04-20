class Tarea < ActiveRecord::Base
  belongs_to :estado_tarea
  belongs_to :elemento
end
