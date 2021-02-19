# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.destroy_all
# Tech.destroy_all
# Synth.destroy_all

#works
u = User.create({ username: 'Carl', email: '', password: '123'})
t = Tech.create({ name: 'Analog'})
# Synth.create([{ name: 'Mother', brand: '', hybrid: false, price: 999.99, description: 'An expensive analog synth'}])

synthy = u.synths.create(name: "synthy", tech: t)


