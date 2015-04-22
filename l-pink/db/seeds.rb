# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Proyecto.create(:nombre => 'L-Pink', :descripcion => 'Proyecto que busca facilitar la metodología scrum, registrando actas dialógicas.', :fecha_inicio => '2015-04-08', :fecha_fin => '2015-04-22')
Proyecto.create(:nombre => 'Dentool', :descripcion => 'Proyecto centrado en la creación de un software que facilite la obtención de datos estadísticos para atenciones de un centro dental', :fecha_inicio => '2014-07-29', :fecha_fin => '2014-11-29')
Proyecto.create(:nombre => 'Traminet', :descripcion => 'Proyecto de software que busca crear una plataforma web para compartir información respecto a diferentes tipos de tramites', :fecha_inicio => '2014-07-09', :fecha_fin => '2014-12-03')