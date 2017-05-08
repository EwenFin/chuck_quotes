# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Quote.delete_all
Quote.create({quote: "Chuck Norris does not recognise the independence of Spain", awesome:10})
Quote.create({quote: "Chuck Norris has no chin, under his beard is a third fist", awesome:10})