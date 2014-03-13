# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Todo.destroy_all
Todo.create(task: 'first thing to do', completed: false)
Todo.create(task: 'second thing to do', completed: false)
Todo.create(task: 'third thing to do', completed: false)
Todo.create(task: 'fourth thing to do', completed: true)