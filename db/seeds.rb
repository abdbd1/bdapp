# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
  {name: 'Jesús', surname: 'Di Bari', email: 'iijbari@gmail.com', password: 'password', type: 'Principal', counter: 1},
  {name: 'Jesús', surname: 'Administrador', email: 'jesus@admin.com', password: 'password', type: 'Administrador', counter: 2, parent_id: 1},
  {name: 'Jesús', surname: 'Secundario', email: 'jesus@secundario.com', password: 'password', type: 'Secundario', counter: 3, parent_id: 1},
])