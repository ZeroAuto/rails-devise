# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

mike = User.new
mike.email = "mike@mike.com"
mike.password = "33333333333"
mike.password_confirmation = "33333333333"
mike.band_name = "The Mike Cooey Experience"
mike.save

matt = User.new
matt.email = "matt@matt.com"
matt.password = "33333333333"
matt.password_confirmation = "33333333333"
matt.band_name = "The Matt Experience"
matt.save

m = Member.new
m.email = "mike@mike.com"
m.first_name = "Michael"
m.last_name = "Cooley"
m.city = "Austin"
m.state = "TX"
m.user_id = 2
m.save

p = Member.new
p.email = "pat@pat.com"
p.first_name = "Pat"
p.last_name = "Cooley"
p.city = "Cleveland"
p.state = "OH"
p.user_id = 2
p.save

ott = Member.new
ott.first_name = "Matt"
ott.last_name = "Ott"
ott.city = "Austin"
ott.state = "Texas"
ott.user_id = 3
ott.save