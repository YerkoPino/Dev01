# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# proyecto = Proyecto.new
# proyecto.id = '1'
# proyecto.nombre = 'L-Pink'
# proyecto.descripcion = 'Proyecto que busca facilitar la metodología scrum, registrando actas dialógicas.'
# proyecto.fecha_inicio = '2015-04-08'
# proyecto.fecha_fin = '2015-04-22'
# proyecto.save!

# proyecto = Proyecto.new
# proyecto.id = '2'
# proyecto.nombre = 'Dentool'
# proyecto.descripcion = 'Proyecto centrado en la creación de un software que facilite la obtención de datos estadísticos para atenciones de un centro dental.'
# proyecto.fecha_inicio = '2014-07-29'
# proyecto.fecha_fin = '2014-11-29'

# proyecto = Proyecto.new
# proyecto.id = '3'
# proyecto.nombre = 'Traminet'
# proyecto.descripcion = 'Proyecto de software que busca crear una plataforma web para compartir información respecto a diferentes tipos de tramites.'
# proyecto.fecha_inicio = '2014-07-09'
# proyecto.fecha_fin = '2014-12-03'

Proyecto.create(:id => '1', :nombre => 'L-Pink', :descripcion => 'Proyecto que busca facilitar la metodología scrum, registrando actas dialógicas.', :fecha_inicio => '2015-04-08', :fecha_fin => '2015-08-22')
Proyecto.create(:id => '2', :nombre => 'Dentool', :descripcion => 'Proyecto centrado en la creación de un software que facilite la obtención de datos estadísticos para atenciones de un centro dental', :fecha_inicio => '2014-07-29', :fecha_fin => '2015-11-29')
Proyecto.create(:id => '3', :nombre => 'Traminet', :descripcion => 'Proyecto de software que busca crear una plataforma web para compartir información respecto a diferentes tipos de tramites', :fecha_inicio => '2014-07-09', :fecha_fin => '2015-12-03')

user = User.new
user.id = '1'
user.email = 'camilo.jimenez@usach.cl'
user.nombre = 'Camilo'
user.apellido = 'Jimenez'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'CJ'
user.save!

user = User.new
user.id = '2'
user.email = 'benjamin.ruiztagle@usach.cl'
user.nombre = 'Benjamin'
user.apellido = 'RuizTagle'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'BR'
user.save!

user = User.new
user.id = '3'
user.email = 'yerko.pino@usach.cl'
user.nombre = 'Yerko'
user.apellido = 'Pino'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'YP'
user.save!

user = User.new
user.id = '4'
user.email = 'matias.quinteros@usach.cl'
user.nombre = 'Matias'
user.apellido = 'Quinteros'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'MQ'
user.save!

user = User.new
user.id = '5'
user.email = 'ismael.vicencio@usach.cl'
user.nombre = 'Ismael'
user.apellido = 'Vicencio'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'IV'
user.save!

user = User.new
user.id = '6'
user.email = 'daniel.vargas@usach.cl'
user.nombre = 'Daniel'
user.apellido = 'Vargas'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'DV'
user.save!

user = User.new
user.id = '7'
user.email = 'jose.cortes@usach.cl'
user.nombre = 'Jose'
user.apellido = 'Cortes'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'JC'
user.save!

user = User.new
user.id = '8'
user.email = 'alex.garate@usach.cl'
user.nombre = 'Alex'
user.apellido = 'Garate'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'AG'
user.save!

user = User.new
user.id = '9'
user.email = 'cristobal.vasquezz@usach.cl'
user.nombre = 'Cristobal'
user.apellido = 'Vasquez'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'CV'
user.save!

user = User.new
user.id = '10'
user.email = 'pablo.salinas@usach.cl'
user.nombre = 'Pablo'
user.apellido = 'Salinas'
user.tipo = 'team'
user.password = '12345678'
user.password_confirmation = '12345678'
user.identificador = 'PS'
user.save!

UsuarioProyecto.create(:proyecto_id => '1', :user_id => '1')
UsuarioProyecto.create(:proyecto_id => '1', :user_id => '2')
UsuarioProyecto.create(:proyecto_id => '1', :user_id => '4')
UsuarioProyecto.create(:proyecto_id => '1', :user_id => '7')

UsuarioProyecto.create(:proyecto_id => '2', :user_id => '1')
UsuarioProyecto.create(:proyecto_id => '2', :user_id => '2')
UsuarioProyecto.create(:proyecto_id => '2', :user_id => '3')
UsuarioProyecto.create(:proyecto_id => '2', :user_id => '5')
UsuarioProyecto.create(:proyecto_id => '2', :user_id => '8')

UsuarioProyecto.create(:proyecto_id => '3', :user_id => '9')
UsuarioProyecto.create(:proyecto_id => '3', :user_id => '10')
UsuarioProyecto.create(:proyecto_id => '3', :user_id => '1')
UsuarioProyecto.create(:proyecto_id => '3', :user_id => '3')
UsuarioProyecto.create(:proyecto_id => '3', :user_id => '6')

ActaReunion.create(:id => '1', :fecha => '2015-04-09 15:00:01', :correlativo => '1', :proyecto_id => '1')
ActaReunion.create(:id => '2', :fecha => '2015-04-12 15:20:01', :correlativo => '2', :proyecto_id => '1')
ActaReunion.create(:id => '3', :fecha => '2015-04-15 15:30:01', :correlativo => '3', :proyecto_id => '1')
ActaReunion.create(:id => '4', :fecha => '2015-04-20 15:40:01', :correlativo => '4', :proyecto_id => '1')
ActaReunion.create(:id => '5', :fecha => '2015-04-09 15:00:01', :correlativo => '1', :proyecto_id => '2')
ActaReunion.create(:id => '6', :fecha => '2015-04-12 15:20:01', :correlativo => '2', :proyecto_id => '2')
ActaReunion.create(:id => '7', :fecha => '2015-04-15 15:30:01', :correlativo => '3', :proyecto_id => '2')
ActaReunion.create(:id => '8', :fecha => '2015-04-20 15:40:01', :correlativo => '4', :proyecto_id => '2')
ActaReunion.create(:id => '9', :fecha => '2015-04-09 15:00:01', :correlativo => '1', :proyecto_id => '3')
ActaReunion.create(:id => '10', :fecha => '2015-04-12 15:20:01', :correlativo => '2', :proyecto_id => '3')
ActaReunion.create(:id => '11', :fecha => '2015-04-15 15:30:01', :correlativo => '3', :proyecto_id => '3')
ActaReunion.create(:id => '12', :fecha => '2015-04-20 15:40:01', :correlativo => '4', :proyecto_id => '3')

UsuarioActaReunion.create(:acta_reunion_id => '1', :user_id => '1', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '1', :user_id => '2', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '1', :user_id => '4', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '1', :user_id => '7', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '2', :user_id => '1', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '2', :user_id => '2', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '2', :user_id => '4', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '2', :user_id => '7', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '3', :user_id => '1', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '3', :user_id => '2', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '3', :user_id => '4', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '3', :user_id => '7', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '4', :user_id => '1', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '4', :user_id => '2', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '4', :user_id => '4', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '4', :user_id => '7', :secretario => '0')


UsuarioActaReunion.create(:acta_reunion_id => '5', :user_id => '1', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '5', :user_id => '2', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '5', :user_id => '3', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '5', :user_id => '5', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '5', :user_id => '8', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '6', :user_id => '1', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '6', :user_id => '2', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '6', :user_id => '3', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '6', :user_id => '5', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '6', :user_id => '8', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '7', :user_id => '1', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '7', :user_id => '2', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '7', :user_id => '3', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '7', :user_id => '5', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '7', :user_id => '8', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '8', :user_id => '1', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '8', :user_id => '2', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '8', :user_id => '3', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '8', :user_id => '5', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '8', :user_id => '8', :secretario => '0')


UsuarioActaReunion.create(:acta_reunion_id => '9', :user_id => '1', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '9', :user_id => '3', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '9', :user_id => '6', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '9', :user_id => '9', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '9', :user_id => '10', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '10', :user_id => '1', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '10', :user_id => '3', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '10', :user_id => '6', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '10', :user_id => '9', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '10', :user_id => '10', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '11', :user_id => '1', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '11', :user_id => '3', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '11', :user_id => '6', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '11', :user_id => '9', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '11', :user_id => '10', :secretario => '0')

UsuarioActaReunion.create(:acta_reunion_id => '12', :user_id => '1', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '12', :user_id => '3', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '12', :user_id => '6', :secretario => '0')
UsuarioActaReunion.create(:acta_reunion_id => '12', :user_id => '9', :secretario => '1')
UsuarioActaReunion.create(:acta_reunion_id => '12', :user_id => '10', :secretario => '0')