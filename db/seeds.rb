Event.destroy_all
User.destroy_all
Tag.destroy_all
UserTag.destroy_all
puts "Old seeds destroyed"
puts "Creating users"
user_1 = User.create!(username: "bob", password: "123456", email: "bob@ilovecapys.com", location: "Reichenberger Str. 158, 10999 Berlin")
user_1.save!

user_2 = User.create!(username: "helmut", password: "123456", email: "helmut@capysarethebest.com", location: "Oberhaardter Weg 18, 14193 Berlin")
user_2.save!

user_3 = User.create!(username: "gertrude", password: "123456", email: "gertrude@capys.com", location: "Aachener Str. 43, 10713 Berlin")
user_3.save!

user_4 = User.create!(username: "brunhilde", password: "123456", email: "brunhilde@capybaras.com", location: "Wallenbergstraße 6, 10713 Berlin")
user_4.save!

user_5 = User.create!(username: "hartmut", password: "123456", email: "hartmut@capycapy.com", location: "Eschenstraße 5, 12161 Berlin")
user_5.save!

user_6 = User.create!(username: "hildegard", password: "123456", email: "hildegard@copacabana.com", location: "Taubertstraße 29C, 14193 Berlin")
user_6.save!
puts "Users created"
puts "Creating events"
#creating seed for events
event1 = Event.create( name: "Labyrinth Kindermuseum",
   starting_date: Date.parse("10/02/2022"),
   ending_date: Date.parse("23/02/2022"),
   starting_time: Time.parse("9:30"),
   ending_time: Time.parse("17:30"),
   description: "Are you looking for a museum that would help teach your kids a variety of activities where they can train their senses and at the same time, learn important life skills? If that is a yes, you should check out Labyrinth Kindermuseum.",
   address: "Osloer Str. 12, 13359 Berlin",
   free: true,
   price: 0
  )
event2 = Event.create(name: "Berlin Zoological Garden",
    starting_date: Date.parse("19/02/2022"),
    ending_date: Date.parse("20/03/2022"),
    starting_time: Time.parse("9:30"),
    ending_time: Time.parse("17:30"),
    description: "For children who are animal and plant lovers, heading over to Berlin Zoological Garden should be in your itinerary.",
    address: "Hardenbergpl. 8, 10787 Berlin",
    free: false,
    price: 20
   )
event10 = Event.create(name: "Legoland Discovery Centre",
    starting_date: Date.parse("13/03/2022"),
    ending_date: Date.parse("15/03/2022"),
    starting_time: Time.parse("9:30"),
    ending_time: Time.parse("17:30"),
    description: "If your child or yourself  is a LEGO fan, you should not miss out bringing them to Berlin’s Legoland Discovery Centre. ",
    address: "Potsdamer Str. 4, 10785 Berlin",
    free: true,
    price:0
   )
event3 = Event.create(name: "Tierpark",
    starting_date: Date.parse("18/03/2022"),
    ending_date: Date.parse("23/03/2022"),
    starting_time: Time.parse("9:30"),
    ending_time: Time.parse("17:30"),
    description: "If you want to check out the largest collection of animals in Europe, you may want to include Tierpark Berlin in your itinerary. ",
    address: "Am Tierpark 125, 10319 Berlin",
    free: false,
    price: 22.3
   )
event4 = Event.create(name: "Natural History Museum",
    starting_date: Date.parse("4/04/2022"),
    ending_date: Date.parse("25/04/2022"),
    starting_time: Time.parse("9:30"),
    ending_time: Time.parse("17:30"),
    description: "For kids who want to understand the natural world and its development, visiting the country’s Natural History Museum is a must.",
    address: "Invalidenstraße 43, 10115 Berlin",
    free: false,
    price: 21.30
   )
event5 = Event.create(name: "Tempelhofer Park",
    starting_date: Date.parse("01/04/2022"),
    ending_date: Date.parse("02/08/2022"),
    starting_time: Time.parse("9:30"),
    ending_time: Time.parse("17:30"),
    description: "Want to have a fun picnic with your child after a long walk around Berlin? Why not make a stop at the Tempelhofer Park?",
    address: "Tempelhofer Damm, 12101 Berlin",
    free: true,
    price: 0
   )
event6 = Event.create(name: "AquaDom and Sea Life",
    starting_date: Date.parse("12/04/2022"),
    ending_date: Date.parse("21/10/2022"),
    starting_time:Time.parse("9:30"),
    ending_time: Time.parse("17:30"),
    description: "For children who love aquatic animals and the sea, visiting the AquaDom and Sea Life will blow their minds away.",
    address: "Spandauer Str. 3, 10178 Berlin",
    free: false,
    price: 30
   )
event7 = Event.create(name: "Waldhochseilgarten Jungfernheide",
    starting_date:Date.parse("17/06/2022"),
    ending_date:Date.parse("12/06/2022"),
    starting_time: Time.parse("9:00"),
    ending_time: Time.parse("17:00"),
    description: "Want to challenge yourself and your kids into an obstacle course that would surely give you a workout? If that is a big yes, going to the Waldhochseilgarten Jungfernheide is a must!",
    address: "Heckerdamm 260, 13627 Berlin",
    free: false,
    price: 10
   )
event8 =Event.create(name: "Science Center Spectrum",
    starting_date: Date.parse("02/06/2022"),
    ending_date: Date.parse("17/06/2022"),
    starting_time: Time.parse("9:00"),
    ending_time: Time.parse("17:00"),
    description: "For kids who want to explore the vast world of science and technology, the Science Center Spectrum will definitely blow their mind away.",
    address: "Möckernstraße 26, 10963 Berlin",
    free: true,
    price: 0
   )
event9 = Event.create(name: "MACHmit! Museum for Children",
    starting_date: Date.parse("01/03/2022"),
    ending_date: Date.parse("02/06/2022"),
    starting_time: Time.parse("10:00"),
    ending_time: Time.parse("18:30"),
    description: "To cap off our top 10 kid-friendly attractions in Berlin is the MACHmit! Museum for Kids.",
    address: "Möckernstraße 26, 10963 Berlin",
    free: true,
    price: 0
   )
event11 = Event.create(name: "Baby Yoga",
    starting_date: Date.parse("28/03/2022"),
    ending_date: Date.parse("28/03/2022"),
    starting_time: Time.parse("16:00"),
    ending_time: Time.parse("17:00"),
    description: "Meet us at the entrance to Tempelhofer Feld at S-bahn Tempelhof at 16:00. Please bring your yoga matte. After class we still stay for half an hour to chat, feel free to join.",
    address: "Tempelhofer Damm, 12101 Berlin",
    free: true,
    price: 0
   )
event11 = Event.create(name: "Lily’s B-day party",
    starting_date: Date.parse("05/03/2022"),
    ending_date: Date.parse("05/03/2022"),
    starting_time: Time.parse("13:00"),
    ending_time: Time.parse("18:00"),
    description: "Join us the celebrate with Lily birthday",
    address: "Rothariweg 23, 12103 Berlin",
    free: true,
    price: 0
   )
   event12 = Event.create(name: "Shantala massage class",
    starting_date: Date.parse("06/03/2022"),
    ending_date: Date.parse("06/03/2022"),
    starting_time: Time.parse("11:30"),
    ending_time: Time.parse("13:00"),
    description: "Join us to disstress your baby",
    address: "Falkenberger Str., 13088 Berlin",
    free: true,
    price: 0
   )
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
puts "User tags created"
