# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


samuel = User.new
samuel.first_name = "Samuel"
samuel.last_name = "Horn"
samuel.email = "samuel@horn.com"
samuel.pic_url = open("http://res.cloudinary.com/bookaround/image/upload/v1481850165/samuelH_profile_pic_y0wzk8.jpg")
samuel.password = "FUBARS"
samuel.password_confirmation = "FUBARS"
samuel.valid?
samuel.save!

gregory = User.new
gregory.first_name = "Gregory"
gregory.last_name = "Griffin"
gregory.email = "gregory@griffin.com"
gregory.pic_url = open("http://res.cloudinary.com/bookaround/image/upload/v1481752500/Gregory_profile_pic_pnmx8s.jpg")
gregory.password = "FUBARS"
gregory.password_confirmation = "FUBARS"
gregory.valid?
gregory.save!

jasper = User.new
jasper.first_name = "Jasper"
jasper.last_name = "Hendrickx"
jasper.email = "jasper@hendrickx.com"
jasper.pic_url = open("http://res.cloudinary.com/bookaround/image/upload/v1481752496/jasper_profile_pic_segwtd.jpg")
jasper.password = "FUBARS"
jasper.password_confirmation = "FUBARS"
jasper.valid?
jasper.save!

samuelbrown = Trainer.new
samuelbrown.first_name = "Samuel"
samuelbrown.last_name = "Rodriguez"
samuelbrown.email = "samuel@rodriguez.com"
samuelbrown.pic_url = open("http://res.cloudinary.com/bookaround/image/upload/v1481752506/SamuelR_lo1yq7.jpg")
samuelbrown.password = "FUBARS"
samuelbrown.password_confirmation = "FUBARS"
samuelbrown.valid?
samuelbrown.save!

random = Trainer.new
random.first_name = "Henrich"
random.last_name = "Fruchart"
random.email = "henrich@fruchart.com"
random.pic_url = open("http://absorbmarketing.com/wp-content/uploads/2015/01/Picture-of-person.png")
random.password = "FUBARS"
random.password_confirmation = "FUBARS"
random.valid?
random.save!


