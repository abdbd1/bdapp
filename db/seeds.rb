# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([
  {name: 'Jesús', surname: 'Di Bari', email: 'iijbari@gmail.com', birth: "10-10-1993", male: true, password: 'password', counter: 1, signatory: true},
  {name: 'Jesús', surname: 'Administrador', email: 'jesus@admin.com', birth: "10-10-1993", male: true, password: 'password', counter: 2, parent_id: 1, signatory: true},
  {name: 'Jesús', surname: 'Secundario', email: 'jesus@secundario.com', birth: "10-10-1993", male: true, password: 'password', counter: 3, parent_id: 2, signatory: false},
  
  {name: 'Cliente', surname: 'Firmante', email: 'cliente@firmante.com', birth: "10-10-1993", male: true, password: 'password', counter: 1, signatory: true},
  {name: 'Administrador', surname: 'Firmadmin', email: 'admin@firmante.com', birth: "10-10-1993", male: true, password: 'password', counter: 2, parent_id: 4, signatory: true},
  
  {name: 'Usuario', surname: 'Interno', email: 'usuario@interno.com', birth: "10-10-1993", male: true, password: 'password', counter: 4, signatory: false},
])

Question.create([
  {question: "¿Quién fue el mejor amigo de tu infancia?"},
  {question: "¿Placa de su primer Automóvil?"},
  {question: "¿Nombre del bisabuelo de su segunda exnovia?"}
])

#Operation.create([
#  {acronimo: 'Black Op.', nombre: 'Operación 1', montomax: 500000, montomin: 5000, tipo: 'Special Ops.', natural: true},
#  {acronimo: 'Sub Black Op.', nombre: 'Sub Operación 1', montomax: 500000, montomin: 5000, tipo: 'Sub Special Ops.', natural: true, parent_id: 1}
#])