UserTag.destroy_all
EventTag.destroy_all
Event.destroy_all
Message.destroy_all
Chat.destroy_all
User.destroy_all
Tag.destroy_all

require 'time'
require 'date'

puts "Old seeds destroyed"
puts "Creating users"

user_1 = User.create!(username: "Charlotte", password: "123456", email: "charlotte@gmail.com", location: "Reichenberger Straße 158, 10999 Berlin", description: "We're proud moms of 1yrs old Laura and we'd love to meet other queer families in our area! Let us know if you'd like to hang out!" )
photo1 = URI.open('app/assets/images/charlotte.jpg')
user_1.photo.attach(io: photo1, filename: 'charlotte', content_type: 'image/jpg')
user_1.save!

user_2 = User.create!(username: "Yusuf", password: "123456", email: "yusuf@gmail.com", location: "Oberhaardter Weg 18, 14193 Berlin", description: "I'm a single dad from Jordan, new to Berlin. I'd love to meet other Arabic speaking parents and exchange advice, spend some time together!")
photo2 = URI.open('app/assets/images/yusuf.jpg')
user_2.photo.attach(io: photo2, filename: 'yusuf', content_type: 'image/jpg')
user_2.save!

user_3 = User.create!(username: "Silke", password: "123456", email: "silke@gmail.com", location: "Aachener Str. 43, 10713 Berlin", description:"Hi! We became parents super late, most of our friends' children are already adults. We'd love to connect with families in our neighborhood with kids aged 3-6, preferably also 45+ but not only! :)")
photo3 = URI.open('app/assets/images/silke.jpg')
user_3.photo.attach(io: photo3, filename: 'silke', content_type: 'image/jpg')
user_3.save!

user_4 = User.create!(username: "Julia", password: "123456", email: "julia@gmail.com", location: "Wallenbergstraße 6, 10713 Berlin", description: "Hello! Our daugther is going to school next year, she was diagnosed with ADHD at the age of 5, we are worried how she'll manage in school and we'd like to support her in the best possible way. If your kids have a similar problem, please reach out to us, we'd love to know your experiences!")
photo4 = URI.open('app/assets/images/julia.jpg')
user_4.photo.attach(io: photo4, filename: 'julia', content_type: 'image/jpg')
user_4.save!

user_5 = User.create!(username: "Anna", password: "123456", email: "anna@gmail.com", location: "Eschenstraße 5, 12161 Berlin", description: "Any French speaking families who are trying vegan upbringing? Let's meet and exchange knowledge!")
photo5 = URI.open('app/assets/images/anna.jpg')
user_5.photo.attach(io: photo5, filename: 'anna', content_type: 'image/jpg')
user_5.save!

user_6 = User.create!(username: "Zuzanna", password: "123456", email: "zuzanna@gmail.com", location: "Taubertstraße 29C, 14193 Berlin", description: "I'm a single mom, new to Berlin. I'd love to meet with other Polish moms in the area. Also anyone here whose kid is also hyperactive? Let's support each other!")
photo6 = URI.open('app/assets/images/zuzanna.jpg')
user_6.photo.attach(io: photo6, filename: 'zuzanna', content_type: 'image/jpg')
user_6.save!

user_7 = User.create!(username: "Franky", password: "123456", email: "franky@gmail.com", location: "Winklers Pl. 8, 22767 Hamburg", description: "I'm a single dad, new in Hamburg, and I have an 8 year-old daughter who loves football, climbing and painting. We would love to meet other English-speaking families in the area.")
photo7 = URI.open('app/assets/images/franky.jpg')
user_7.photo.attach(io: photo7, filename: 'franky', content_type: 'image/jpg')
user_7.save!

user_8 = User.create!(username: "Iwona", password: "123456", email: "iwona@gmail.com", location: "Rathenower Str. 30, 10559 Berlin", description: "Hi! I'm a mom of a 6 months old girl who doesn`t cry only when she's outside :) I'm looking for moms in the area who want to join us on never ending stroller walks and share their advice!")
photo8 = URI.open('app/assets/images/iwona.jpg')
user_8.photo.attach(io: photo8, filename: 'iwona', content_type: 'image/jpg')
user_7.save!

# puts "Users created"
# puts "Creating events"

event1 = Event.create!( name: "Labyrinth Kindermuseum",
  starting_date: Date.parse("10/04/2022"),
  ending_date: Date.parse("10/04/2022"),
  starting_time: Time.parse("9:30"),
  ending_time: Time.parse("11:30"),
  description: "We're planning to go to Kindermuseum soon, we'd love some other kids and their parents to join us, the more the merrier! ",
  address: "Osloer Str. 12, 13359 Berlin",
  free: false,
  price: 5,
  user: user_4
  )
photo1 = URI.open('app/assets/images/eventpic_labyrinth_kindermuseum.jpg')
event1.photo.attach(io: photo1, filename: 'eventpic_labyrinth_kindermuseum', content_type: 'image/jpg')
event1.save!

event2 = Event.create!(name: "Berlin Zoological Garden",
  starting_date: Date.parse("19/03/2022"),
  ending_date: Date.parse("19/03/2022"),
  starting_time: Time.parse("11:30"),
  ending_time: Time.parse("15:30"),
  description: "Any elephant lovers around here? Our daughter is obsessed with them and we'd love her to experience the zoo with other kids, join us!",
  address: "Hardenbergpl. 8, 10787 Berlin",
  free: false,
  price: 20,
  user: user_5
  )
photo2 = URI.open('app/assets/images/eventpic_zoo.jpg')
event2.photo.attach(io: photo2, filename: 'eventpic_zoo', content_type: 'image/jpg')
event2.save!

event3 = Event.create!(name: "Relaxation techniques for hyperactive children",
  starting_date: Date.parse("13/03/2022"),
  ending_date: Date.parse("13/03/2022"),
  starting_time: Time.parse("15:30"),
  ending_time: Time.parse("17:30"),
  description: "Your child has been diagnosed with ADHD? Mine too! For years I have studied the best relaxation techniques that would help my son calm down when he needs it. Let me share them with you! ",
  address: "Potsdamer Str. 4, 10785 Berlin",
  free: true,
  price: 0,
  user: user_1
  )
photo3 = URI.open('app/assets/images/eventpic_relaxation.jpg')
event3.photo.attach(io: photo3, filename: 'eventpic_relaxation', content_type: 'image/jpg')
event3.save!

event4 = Event.create!(name: "Theatre group!",
  starting_date: Date.parse("23/03/2022"),
  ending_date: Date.parse("23/03/2022"),
  starting_time: Time.parse("17:00"),
  ending_time: Time.parse("18:30"),
  description: "My kids love to perform and they are looking for buddies to form a theater group! Meetings at our place weekly!",
  address: "Am Tierpark 125, 10319 Berlin",
  free: true,
  price: 0,
  user: user_2
  )
photo4 = URI.open('app/assets/images/eventpic_theater.jpg')
event4.photo.attach(io: photo4, filename: 'eventpic_theater', content_type: 'image/jpg')
event4.save!

event5 = Event.create!(name: "Jogging with strollers",
  starting_date: Date.parse("4/04/2022"),
  ending_date: Date.parse("4/04/2022"),
  starting_time: Time.parse("10:30"),
  ending_time: Time.parse("11:30"),
  description: "We are forming a jogging group for parents! Come with your little one, bring a sports stroller and let's get active!",
  address: "Invalidenstraße 43, 10115 Berlin",
  free: true,
  price: 0,
  user: user_6
  )
photo5 = URI.open('app/assets/images/eventpic_jogging.jpg')
event5.photo.attach(io: photo5, filename: 'eventpic_jogging', content_type: 'image/jpg')
event5.save!

event6 = Event.create!(name: "Tempelhofer Park",
  starting_date: Date.parse("01/05/2022"),
  ending_date: Date.parse("01/05/2022"),
  starting_time: Time.parse("11:30"),
  ending_time: Time.parse("17:30"),
  description: "Want to join us for a fun picnic with your child? Why not make a stop at the Tempelhofer Park? We'll be there, playing games and having fun!",
  address: "Tempelhofer Damm, 12101 Berlin",
  free: true,
  price: 0,
  user: user_3
  )
photo6 = URI.open('app/assets/images/eventpic_tempelhofer_feld.jpg')
event6.photo.attach(io: photo6, filename: 'eventpic_tempelhofer_feld', content_type: 'image/jpg')
event6.save!

event7 = Event.create!(name: "AquaDom and Sea Life",
  starting_date: Date.parse("1/04/2022"),
  ending_date: Date.parse("30/04/2022"),
  starting_time:Time.parse("9:30"),
  ending_time: Time.parse("17:30"),
  description: "We have 3 extra tickets to Aquadom valid until the end of the month! It's a cool weekend activity for children, our daughter loves it! Anyone interested?",
  address: "Spandauer Str. 3, 10178 Berlin",
  free: false,
  price: 30,
  user: user_4
   )
photo7 = URI.open('app/assets/images/eventpic_aquadom.jpg')
event7.photo.attach(io: photo7, filename: 'eventpic_aquadom', content_type: 'image/jpg')
event7.save!

event8 = Event.create!(name: "Waldhochseilgarten Jungfernheide",
  starting_date:Date.parse("11/06/2022"),
  ending_date:Date.parse("11/06/2022"),
  starting_time: Time.parse("9:00"),
  ending_time: Time.parse("17:00"),
  description: "We would love to meet other families at this amazing obstacle course!",
  address: "Heckerdamm 260, 13627 Berlin",
  free: false,
  price: 10,
  user: user_2
  )
photo8 = URI.open('app/assets/images/eventpic_waldhochseilgarten.jpg')
event8.photo.attach(io: photo8, filename: 'eventpic_waldhochseilgarten', content_type: 'image/jpg')
event8.save!

event9 =Event.create!(name: "Science Center Spectrum",
  starting_date: Date.parse("02/06/2022"),
  ending_date: Date.parse("17/06/2022"),
  starting_time: Time.parse("9:00"),
  ending_time: Time.parse("17:00"),
  description: "For kids who want to explore the vast world of science and technology, the Science Center Spectrum will definitely blow their mind away.",
  address: "Möckernstraße 26, 10963 Berlin",
  free: true,
  price: 0,
  user: user_4
  )
photo9 = URI.open('app/assets/images/eventpic_science_center.jpg')
event9.photo.attach(io: photo9, filename: 'eventpic_science_center', content_type: 'image/jpg')
event9.save!

event10 = Event.create!(name: "MACHmit! Free drawing class",
  starting_date: Date.parse("01/03/2022"),
  ending_date: Date.parse("02/06/2022"),
  starting_time: Time.parse("17:00"),
  ending_time: Time.parse("18:30"),
  description: "Children Museum is offering free drawing classes from March to June!",
  address: "Möckernstraße 26, 10963 Berlin",
  free: true,
  price: 0,
  user: user_5
  )
photo10 = URI.open('app/assets/images/eventpic_machmit_drawing.jpg')
event10.photo.attach(io: photo10, filename: 'eventpic_machmit_drawing', content_type: 'image/jpg')
event10.save!

event11 = Event.create!(name: "Baby Yoga",
  starting_date: Date.parse("28/03/2022"),
  ending_date: Date.parse("28/03/2022"),
  starting_time: Time.parse("16:00"),
  ending_time: Time.parse("17:00"),
  description: "Meet us at the entrance to Tempelhofer Feld at S-bahn Tempelhof at 16:00. Please bring your yoga matte. After class we still stay for half an hour to chat, feel free to join.",
  address: "Tempelhofer Damm, 12101 Berlin",
  free: true,
  price: 0,
  user: user_5
  )
photo11 = URI.open('app/assets/images/eventpic_baby_yoga.jpg')
event11.photo.attach(io: photo11, filename: 'eventpic_baby_yoga', content_type: 'image/jpg')
event11.save!

event12 = Event.create!(name: "Lily’s dinosaur B-day party",
  starting_date: Date.parse("05/04/2022"),
  ending_date: Date.parse("05/04/2022"),
  starting_time: Time.parse("13:00"),
  ending_time: Time.parse("18:00"),
  description: "Lily's dreaming about a biiiiiig dinosaur themed party! Please come to our garden and make her dream come true!",
  address: "Rothariweg 23, 12103 Berlin",
  free: true,
  price: 0,
  user: user_6
  )
photo12 = URI.open('app/assets/images/eventpic_bday_dinosaur.jpg')
event12.photo.attach(io: photo12, filename: 'eventpic_bday_dinosaur', content_type: 'image/jpg')
event12.save!

event13 = Event.create!(name: "Shantala massage class",
  starting_date: Date.parse("06/04/2022"),
  ending_date: Date.parse("06/04/2022"),
  starting_time: Time.parse("11:30"),
  ending_time: Time.parse("13:00"),
  description: "Popular newborn massage technique workshop! I'm a certified shantala therapist and will teach you the basics of this wonderful method to calm down your little one.",
  address: "Falkenberger Str., 13088 Berlin",
  free: false,
  price: 5,
  user: user_1
  )
photo13 = URI.open('app/assets/images/eventpic_shantala.jpg')
event13.photo.attach(io: photo13, filename: 'eventpic_shantala', content_type: 'image/jpg')
event13.save!

puts "Events created"
puts "Creating tags"

tag1 = Tag.create(name: "English")
tag2 = Tag.create(name: "German")
tag3 = Tag.create(name: "French")
tag4 = Tag.create(name: "Arabic")
tag5 = Tag.create(name: "Russian")
tag6 = Tag.create(name: "Polish")
tag7 = Tag.create(name: "LGBTQ+")
tag8 = Tag.create(name: "single-parent")
tag9 = Tag.create(name: "new parent")
tag10 = Tag.create(name: "45+ parent")
tag11 = Tag.create(name: "autism")
tag12 = Tag.create(name: "ADHD")
tag13 = Tag.create(name: "diabetic")
tag14 = Tag.create(name: "cerebral palsy")
tag15 = Tag.create(name: "yoga")
tag16 = Tag.create(name: "vegan")
tag17 = Tag.create(name: "biking")

puts "Tags created"
puts "Creating user tags"
user_tag1 = UserTag.create(user_id: user_1.id, tag_id: tag1.id)
user_tag2 = UserTag.create(user_id: user_1.id, tag_id: tag7.id)
user_tag3 = UserTag.create(user_id: user_2.id, tag_id: tag4.id)
user_tag4 = UserTag.create(user_id: user_2.id, tag_id: tag8.id)
user_tag5 = UserTag.create(user_id: user_3.id, tag_id: tag10.id)
user_tag6 = UserTag.create(user_id: user_3.id, tag_id: tag17.id)
user_tag7 = UserTag.create(user_id: user_4.id, tag_id: tag5.id)
user_tag8 = UserTag.create(user_id: user_4.id, tag_id: tag12.id)
user_tag9 = UserTag.create(user_id: user_5.id, tag_id: tag3.id)
user_tag10 = UserTag.create(user_id: user_5.id, tag_id: tag15.id)
user_tag11 = UserTag.create(user_id: user_5.id, tag_id: tag16.id)
user_tag12 = UserTag.create(user_id: user_6.id, tag_id: tag6.id)
user_tag13 = UserTag.create(user_id: user_6.id, tag_id: tag12.id)
user_tag14 = UserTag.create(user_id: user_6.id, tag_id: tag8.id)
user_tag15 = UserTag.create(user_id: user_8.id, tag_id: tag6.id)
user_tag16 = UserTag.create(user_id: user_8.id, tag_id: tag9.id)
user_tag17 = UserTag.create(user_id: user_7.id, tag_id: tag1.id)
puts "User tags created"
puts Tag.all
puts Event.all
