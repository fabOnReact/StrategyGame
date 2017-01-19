# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
me = AdminUser.create(:name => :Fabrizio, :surname => :Bertoglio)

section = Section.create(:name => "Section One", :position => 1)

edit = SectionEdit.new
edit.summary = "Test Edit"

edit.admin_user = me
edit.section = section
edit.save

me.section_edits(true)	

new_developer = Developer.new(:firstname => :Fabrizio, :surname => :Bertoglio, :role => "full-stack Developer", :experience => 1)
new_developer.save

new_developer = Developer.new(:firstname => :Lukas, :surname => :Sommer, :role => "front-end Web-Developer", :experience => 5)
new_developer.save

new_customer = Customer.new(:firstname => :Diego, :surname => :Hernandez, :city => "Long Beach",:project => "Surf e-commerce Website", :seeking_for => "Webdevelopers, App Developers")
new_customer.save

new_customer = Customer.new(:firstname => :Ross, :surname => :Prince, :city => "Sydney",:project => "Social Platform for Educational Purposes", :seeking_for => "Webdevelopers, App Developers, Rails Developer")
new_customer.save

new_task = Task.new(:description => "Surf Website for selling products, services and giving info related to the Surf World", :developer_feedback => 9, :customer_feedback => 7)
new_customer = Customer.find_by(firstname: "Diego")
new_customer.tasks << new_task

new_task.developer = new_developer
new_task.save
new_customer.save
new_developer.save

new_task = Task.new(:description => "Surf Website - Building the backend functionalities and some front end with Rails", :developer_feedback => 10, :customer_feedback => 7)
new_customer.tasks << new_task

new_developer = Developer.find_by(firstname: "Fabrizio")
new_developer.tasks << new_task