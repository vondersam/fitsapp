# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



admin = User.new
admin.first_name = "Admin"
admin.last_name = ""
admin.email = "admin@fitsapp.com"
admin.pic_url = "http://lorempixel.com/400/400/people/"
admin.password = "FUBARS"
admin.password_confirmation = "FUBARS"
admin.admin = true
admin.valid?
admin.save!

samuel = User.new
samuel.first_name = "Samuel"
samuel.last_name = "Horn"
samuel.email = "samuel@horn.com"
samuel.pic_url = "http://lorempixel.com/400/400/people/"
samuel.password = "FUBARS"
samuel.password_confirmation = "FUBARS"
samuel.valid?
samuel.save!

gregory = User.new
gregory.first_name = "Gregory"
gregory.last_name = "Griffin"
gregory.email = "gregory@griffin.com"
gregory.pic_url = "http://lorempixel.com/400/400/people/"
gregory.password = "FUBARS"
gregory.password_confirmation = "FUBARS"
gregory.valid?
gregory.save!

jasper = User.new
jasper.first_name = "Jasper"
jasper.last_name = "Hendrickx"
jasper.email = "jasper@hendrickx.com"
jasper.pic_url = "http://lorempixel.com/400/400/people/"
jasper.password = "FUBARS"
jasper.password_confirmation = "FUBARS"
jasper.valid?
jasper.save!

samuelbrown = User.new
samuelbrown.first_name = "Samuel"
samuelbrown.last_name = "Rodriguez"
samuelbrown.email = "samuel@rodriguez.com"
samuelbrown.pic_url = "http://lorempixel.com/400/400/people/"
samuelbrown.password = "FUBARS"
samuelbrown.password_confirmation = "FUBARS"
samuelbrown.valid?
samuelbrown.save!

random = User.new
random.first_name = "Henrich"
random.last_name = "Fruchart"
random.email = "henrich@fruchart.com"
random.pic_url = "http://lorempixel.com/400/400/people/"
random.password = "FUBARS"
random.password_confirmation = "FUBARS"
random.valid?
random.save!


