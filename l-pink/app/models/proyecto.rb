class Proyecto < ActiveRecord::Base
	validates :nombre, :presence => {:message => "es campo obligatorio"}
	validates :descripcion, :presence => {:message => "es campo obligatorio"}
	validates :fecha_inicio, :presence => {:message => "es campo obligatorio"}
	validates :fecha_fin, :presence => {:message => "es campo obligatorio"}
	
	validate :fecha_fin_mayor_presente,
     :fecha_fin_mayor_inicio

	def fecha_fin_mayor_presente
		if !fecha_fin.blank? and fecha_fin < Date.today
			errors.add(:fecha_fin, "no puede estar en el pasado")
		end
	end

	def fecha_fin_mayor_inicio
		if fecha_fin < fecha_inicio
			errors.add(:fecha_fin, "no puede estar antes que la fecha inicio")
		end
	end
end
