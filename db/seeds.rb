# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new
admin.first_name = "Admin"
admin.last_name = "1"
admin.email = "admin@fitsapp.com"
admin.pic_url = "http://multimedia.catalunya.com/mds/multimedia/37329/F2/Hiking-the-Ripolles.jpg"
admin.password = "FUBARS"
admin.password_confirmation = "FUBARS"
admin.admin = true
admin.role = "admin"
admin.valid?
admin.save!

samuel = User.new
samuel.first_name = "Samuel"
samuel.last_name = "Horn"
samuel.email = "samuel@horn.com"
samuel.pic_url = "http://img1.sunset.timeinc.net/sites/default/files/styles/400xvariable/public/image/2016/06/main/weekend-escapes-desert-hideaways-la-quinta-ca-hiking-0213.jpg"
samuel.password = "FUBARS"
samuel.bio = "I was born in Norway but I have been travelling all around the world. I am passionate about hiking and running."
samuel.password_confirmation = "FUBARS"
samuel.role = "trainer"
samuel.valid?
samuel.save!

gregory = User.new
gregory.first_name = "Gregory"
gregory.last_name = "Griffin"
gregory.email = "gregory@griffin.com"
gregory.pic_url = "http://www.yfaguides.com/uploads/2/5/5/9/25590724/9888371_2.jpg"
gregory.bio = "I love exercising and meditating in nature, especially in mountanous places."
gregory.password = "FUBARS"
gregory.password_confirmation = "FUBARS"
gregory.role = "trainer"
gregory.valid?
gregory.save!

jasper = User.new
jasper.first_name = "Jasper"
jasper.last_name = "Hendrickx"
jasper.email = "jasper@hendrickx.com"
jasper.pic_url = "http://perth.toopa.com/images/hiking-hiking-trail-fun-sports.jpg"
jasper.bio = "As I grew up, I loved playing football but nowadays I am more focused on cycling."
jasper.password = "FUBARS"
jasper.password_confirmation = "FUBARS"
jasper.role = "user"
jasper.valid?
jasper.save!

samuelbrown = User.new
samuelbrown.first_name = "Samuel"
samuelbrown.last_name = "Rodriguez"
samuelbrown.email = "samuel@rodriguez.com"
samuelbrown.pic_url = "http://cdn-img.health.com/sites/default/files/migration/img/web/2014/12/hiking-exercise-400x400.jpg"
samuelbrown.password = "FUBARS"
samuelbrown.bio = "Nature has its own way. I like learning how to respect it and adapt more to it."
samuelbrown.password_confirmation = "FUBARS"
samuelbrown.role = "user"
samuelbrown.valid?
samuelbrown.save!

sarah = User.new
sarah.first_name = "Sarah"
sarah.last_name = "Fruchart"
sarah.email = "sarah@fruchart.com"
sarah.pic_url = "http://www.justroughinit.com/sites/default/files/styles/300x300/public/Grand-Canyon-Day-Hikes.jpg"
sarah.password = "FUBARS"
sarah.bio = "I don't have much time to workout, that's why I mostly exercise on weekends only."
sarah.password_confirmation = "FUBARS"
sarah.role = "user"
sarah.valid?
sarah.save!

plan1 = Plan.new
plan1.title = "Good Start of the Week"
plan1.user_id = samuelbrown.id
plan1.date = "2019-03-22"
plan1.meal = "4 meals, lots of veggies and water"
plan1.exercise = "7 km run"
plan1.meditation = "15 minutes meditation session"
plan1.valid?
plan1.save!

plan2 = Plan.new
plan2.title = "Friday Stress Out"
plan2.user_id = samuelbrown.id
plan2.date = "2019-03-20"
plan2.meal = "4 meals, carbs and orange juice"
plan2.exercise = "12 km run"
plan2.meditation = "20 minutes meditation session"
plan2.valid?
plan2.save!

