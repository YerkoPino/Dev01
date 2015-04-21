# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Proyecto.create(:nombre => 'seeds', :descripcion => 'poblado desde seeds', :fecha_inicio => '2015-11-29', :fecha_fin => '2015-11-29')
