# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Resort.detroy_all

data = [
  { name: 'Meadows', snow_fall: "3'", main_parking: "At Capacity", herm_parking: "35%", lift_1: 'Open', lift_2: 'Open', lift_3: 'Closed' },
  { name: 'Timberline', snow_fall: "4'", main_parking: "75%", herm_parking: "20%", lift_1: 'Open', lift_2: 'Closed', lift_3: 'Closed' },
  { name: 'Ski Bowl', snow_fall: "2'", main_parking: "At Capacity", herm_parking: "15%", lift_1: 'Open', lift_2: 'Open', lift_3: 'Open' }
]
Resort.create(data)
