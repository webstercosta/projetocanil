# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
usuario = Usuario.new(
  nome: "Administrador",
  email: "teste@teste.com",
  password: "123123",
  password_confirmation: "123123",
)
usuario.save(validate: false) unless Usuario.find_by( email: 'teste@teste.com' )

Caracteristica.delete_all
Caracteristica.create(nome: "Tricolor")
Caracteristica.create(nome: "Bicolor")
Caracteristica.create(nome: "Chocolate")
Caracteristica.create(nome: "Preto")
Caracteristica.create(nome: "Marrom")
Caracteristica.create(nome: "Branco")
Caracteristica.create(nome: "Laranja")
Caracteristica.create(nome: "Cinza Sombreado")
Caracteristica.create(nome: "Particolor")
Caracteristica.create(nome: "Pirata")
Caracteristica.create(nome: "Tigrado")

Raca.delete_all
Raca.create(nome: "Maltês")
Raca.create(nome: "ShihTzu")
Raca.create(nome: "Splitz Alemão")
Raca.create(nome: "Yorkshire")
Raca.create(nome: "BullDog Francês")
Raca.create(nome: "BullDog Inglês")
Raca.create(nome: "Pug")
