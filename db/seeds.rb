# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

make_json = ActiveSupport::JSON.decode(File.read('db/make.json'))
vehicle_json = ActiveSupport::JSON.decode(File.read('db/vehicles.json'))
vehicle_types_json = ActiveSupport::JSON.decode(File.read('db/vehicle_types.json'))

makes = Make.create(make_json)
vehicles = Vehicle.create(vehicle_json)
vehicle_types = VehicleType.create(vehicle_types_json)