# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def cc (name, age, hair, eye, gender, alive = true)
  Person.create(name: name, age: age, hair_color: hair, eye_color: eye, gender: gender, alive: alive)
end

cc('Zach', 25, 'brown', 'brown', 'M')
cc('George Washington', 300, 'white', 'blue', 'M', false)
cc('Bob', 40, 'black', 'green', 'M')
cc('Martha', 298, 'white', 'hazel', 'F', false)
cc('Jesse', 28, 'blue', 'brown', 'T')
