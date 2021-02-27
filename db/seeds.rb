# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destoying everything"

User.destroy_all
puts "creating admin user..."
puts "creating spaceships..."
user_admin = User.create!(
    first_name: "Lola",
    last_name: "lalal",
    email: "lola@gmail.com",
    password: "12345678",
    admin: true
  )

user_gaia = User.create(
    first_name: "Gaia",
    last_name: "Cravesana",
    email: "gaia@gmail.com",
    password: "12345678",
    admin: false
)

user_eliseu = User.create(
  first_name: "Eliseu",
  last_name: "Mateus",
  email: "eliseu@gmail.com",
  password: "12345678",
  admin: false
)

moon = "Enjoy a nice and quiet journey to our home planet moon and visit the spots where Neil Armstrong put the American flag in 1969. You will see it - it is still there! 
This is a fast journey just suitable for those who don't have much time to spend.

You will have all the crews attention on the way there, with nice beverages an exquisite snacks.

As soon as you set you feet on the surface of the moon, you will have a briefing with all the attractions that you can visit there.

This is the perfect starter service provided by OuttaSpace that you can really appreciate with your friends and family.

Time of travel: 2 days
Time of stay: 2 days
Type of travel: conventional speed: 100%"

saturn = "Saturn is perhaps the most handsome planet of our solar system. The fly by the rings will be almost like a life changing experience that you, your friends and your family will never forget.

On the ground you will have a tour along the subterranean infrastructure with lots of entertainment and interesting artifacts collected from the ancient (now extinct) saturnean civilization.

The biggest attraction of this journey, although, is the visit to our three outposts that we have on the famous big rocks that are part of rings. 

There you will have the opportunity to visit the ithalium mines and to witness with you own eyes the magnificent mining technology that we use today all over our solar system. Ithalium, being the most scarce and the most powerful substance of our days, is the basic material that allow us to have the very own warp spaceship engines that power our fastest ships. If you like technology and if you enjoy learning about what makes our kind great, you will enjoy this trip. 

Saturn is the most enjoyable planet to please all your family, with lots of entertainment for the youngest, and plenty of cultural attractions for the learners, often for the more mature members of the family.

Time of travel: 46 days
Time of stay: 14 days
Type of travel: conventional speed: 12%, warp speed: 88%" 

venus = "You will love Venus and our ship that will take you there. Lots of fun aboard and also a very good opportunity to a space walk when you arrive near this planet. The views are amazing. You will have the rare opportunity to walk on the surface, and some special designed karts will be there to take you to the venusian mountains on the plant's equatorial line.

Since our terraformation, started some centuries ago, Venus has been a wonderful place to enjoy kart rides along the canyons and great rock formations that you'll only have the opportunity to see there.

Thanks to our proprietary engineered space suites, able to endure the hottest temperatures of Venus, you will feel comfortable to enjoy every minute of your stay.

This one our most requested trip.

Time of travel: 38 days
Time of stay: 8 days
Type of travel: conventional speed: 6%, warp speed: 94%" 

mercury = "Mercury is the closest planet to our sun. The temperatures are very high but you won't feel any discomfort when visiting

it. When have a great tunnel system where you can amaze your friends with your low gravity indoor jumps. This is a destination for those who want to enjoy the pleasures of low gravity and all the sports that only can be played is such environments.

As always, the crew of our ship is trained to provide the best experience aboard.

You'll have the opportunity to visit Kritorion, an asteroid a few million kilometers from  this planet. Whe have a great hotel there, with extreme low gravity water sports that will amaze you. An experience to never forget.

Mercury is the destination that most often has repeat visits from our travelers.

Time of travel: 40 days
Time of stay: 6 days
Type of travel: conventional speed: 8%, warp speed: 92%" 

uranus = "Want adventure and a step into the wild? Uranus is the perfect journey for you. We have prepared the greatest travel adventure with plenty of goddies to enjoy along the way, and on the way back. 

You will visit all the moons of this planet. We have the best space hotels there. 

On the surface, the biggest attraction are the extreme winds that are used to power our fly boats, a flying machine specially designed to get the most out of the strong and currents only encountered in this planet.

On the way back, you are entitled to get the most of a singular experience - a space fight simulation that resembles the best movie scenes from the Star Wars movie. We have a space station prepared  receive you there, to train you to pilot are space fighters (usually takes a few hours on our advanced pilot instructor machines). It's like the ancient paint ball game, but in space. 

Time of travel: 48 days
Time of stay: 12 days
Type of travel: conventional speed: 10%, warp speed: 90%" 

mars = "Mars is the best destination for more seasoned travelers that want to relax and just enjoy a comfortable voyage thru the space. Since the ancient days of terraforming this planet, Mars has become a huge attraction many generations. The beautiful green fields of the East, the wild animals of the biggest zoo of this solar system, and all the incredible lakes of the South, Mars is the longest journey that we offer to get the most out of all these attractions.

If that suits you, you can even buy a time share experience to come back there every year. Since the advent of warp trav
el, trips got very fast. You can go to, and return from Mars is 4 days, enjoying, of course, the best care and attention from our experienced crew.

Time of travel: 4 days.
Time of stay: 32 dias
Type of travel: conventional speed: 3%, warp speed: 97%" 

neptune = "The journey to Neptune is the trip for the most romantic ones. If you are in love, if you want to experience an amazing   time with your loved one, you must come to this planet. I this planet, you never go to the surface. There we have what we call the 'love castles in the sky', aerial structures suspended in the clouds. Gorgeous views into the near by castles and aerial trips from castle to castle, on a mysterious atmosphere like the one that you find in this planet, is the the most romantic days that you'll get from this solar system.

The density of the atmosphere make possible an experience that you won't find any where else - a cloud voyage, not on the sea, not a lake, but of clouds. You have to experience for yourself to believe it.

On the a 'cloud lake', you will have another experience not found anywhere else - the intense sensorial experience provided by a dense vapor bath, with the temperature regulated by our special designed cloud suites, where you will enjoy the body sensations of your life. Many tried to reproduce these experiences on other places. All of them failed.

Time of travel: 34 days.
Time of stay: 8 dias
Type of travel: conventional speed: 12%, warp speed: 88%" 


spaceship1 = Spaceship.create(name: "Moon Light", destination: "moon", description: moon, price: 8000, user_id:user_admin.id )
spaceship2 = Spaceship.create(name: "MarsX the red planet", destination: "mars", description: mars, price: 70000, user_id:user_admin.id )
spaceship3 = Spaceship.create(name: "The smallest sun", destination: "mercury", description: mercury, price: 85000, user_id:user_admin.id )
Spaceship.create(name: "Lover", destination: "venus", description: venus, price: 50000, user_id:user_admin.id )
Spaceship.create(name: "The ring", destination: "saturn", description: saturn, price: 90000, user_id:user_admin.id )
Spaceship.create(name: "Far out", destination: "neptune", description: neptune, price: 100000, user_id:user_admin.id )
Spaceship.create(name: "The 7th planet", destination: "uranus", description: uranus, price: 200000, user_id:user_admin.id )

Booking.create(user_id: user_gaia.id, spaceship_id: spaceship1.id ,start_date: "Thu, 25 Feb 2021",
  end_date: "Thu, 25 Feb 2021" )

Booking.create(user_id: user_gaia.id, spaceship_id: spaceship2.id ,start_date: "Mon, 01 Mar 2021",
  end_date: "Fry, 19 Mar 2021" )

Booking.create(user_id: user_eliseu.id, spaceship_id: spaceship3.id ,start_date: "Mon, 01 Mar 2021",
  end_date: "Fry, 19 Mar 2021" )