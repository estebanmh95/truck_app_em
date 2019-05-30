# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


TruckType.delete_all
TruckMerchandise.delete_all
TruckLoad.delete_all
City.delete_all
Coverage.delete_all


TruckType.create([{name: 'rigidos'},{name: 'articulado'},{name: 'trailer'},{name: 'tren de carretera'}])
TruckMerchandise.create([
  {name: 'camion de lona'},
  {name: 'plataforma abierta'},
  {name: 'frigorificos'},
  {name: 'cisterna'},
  {name: 'cerrado'},
  {name: 'portacoches'},
  {name: 'camion jaula'},
  {name: 'contenedores'}
  ])

TruckLoad.create([
    {name:"N1"},
    {name:"N2"},
    {name:"N3"}
])

Coverage.create([
    {name:"BOG-MED"},
    {name:"MED-BOG"},
    {name:"BOG-CAL"},
    {name:"CAL-BOG"},
    {name:"MED-CAL"},
    {name:"CAL-MED"},
    {name:"BOG-BARR"},
    {name:"BARR-BOG"},
    {name:"MED-BARR"},
    {name:"BARR-MED"}
])

City.create([
    {name:"BOG"},
    {name:"MED"},
    {name:"CAL"},
    {name:"BARR"}
])
