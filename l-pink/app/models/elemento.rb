class Elemento < ActiveRecord::Base
  belongs_to :tema
  belongs_to :elemento
end
