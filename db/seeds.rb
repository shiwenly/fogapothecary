require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596537789/banner_products_cropped_mf3nhf.jpg')
product = Product.create!(
  title: "EXPLORE OUR PRODUCTS",
  description: "
  Explore our wellness range including sprays, mists, candles and balm. Derived from natural ingredients and therapeutic essential oils.
  ",
  description1: "Safe for skin, kids and family.",
  statut: "banner_product",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'eco-spray.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596466022/ECO_SPRAY_dy5sj7.jpg')
product = Product.create!(
  name: "ECO SPRAY",
  category_product: "Spray",
  title: "Workout",
  description: "
  Yoga Mat, Fitness Gears/ Equipment, gym bag, moisture-wicking fabric, helmet and remove bad odors.
  Spray, wipe with damp towel or spray before & after practice.
  ",
  title1: "Home",
  description1: "
  Natural Room Freshener, Pot pourri, shoo away bugs and mosquitoes, able to remove bad energy and eliminate odors.
  Perfect for carpet, furniture, gordyn, sofas and even counter tops. Act as multipurpose antibacteria spray for clean up any excess mess simply spray directly on to the area & blot with a damp towel. Repeat.
  ",
  title2: "Yourself + Family",
  description2: "
  Ready to go with as mosquitoes repellent, toilet seat.
  Mild disinfectant and car seat + freshener. May spray on both skin and cloth. Gentle enough to spray on pets bedding , coat and before & after outdoor walk protection.
  ",
  price: "
  Eco Spray 250ml - IDR 160,000
  Eco Spray 100ml - IDR 80,000
  Eco Spray 1L - IDR 550,000 (Refill)
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'eco-spray.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467722/LINEN_SPRAY_zauqt0.jpg')
product = Product.create!(
  name: "LINEN SPRAY",
  category_product: "Spray",
  title: "Bedroom",
  description: "
  Anti dustmites and Bed bugs, lice, ticks, fleas and insects. Great to use for Dust allergent.
  Simply spray ! Spray regularly for better result.
  Use on Mattress, pillow-spray, linen/bed cover, blanket, bed frame, hidden room corner, carpet, wardrobe, luggage, gordyn and any fabric & linen base material.
  ",
  title1: "Kids",
  description1: "
  Kids playground, Soft toys, bags, stroller and car seat, Baby mattress, and blanket.
  Spray and leave it for 1 hour prior before interact with kids.
  ",
  title2: "Home + Travel",
  description2: "
  May spray around the house, dust trigger area, toilet and bathroom. Bring along as a travel buddies.
  ",
  price: "
  Linen Spray 220ml - IDR 170,000
  Linen Spray 100ml - IDR 85,000
  Linen Spray 1L - IDR 605,000 (Refill)
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'linen-spray.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467711/GUARD_SPRAY_u7b2z3.jpg')
product = Product.create!(
  name: "GUARD SPRAY",
  category_product: "Spray",
  title: "Bedroom",
  description: "
  Anti dustmites and Bed bugs, lice, ticks, fleas and insects. Great to use for Dust allergent.
  Simply spray ! Spray regularly for better result.
  Use on Mattress, pillow-spray, linen/bed cover, blanket, bed frame, hidden room corner, carpet, wardrobe, luggage, gordyn and any fabric & linen base material.
  ",
  title1: "Surface Disinfectant",
  description1: "
  Any handles and all surfaces from Kitchen countertops and Bathroom vanities & fixtures to Living Room carpet and gordyn.
  Ideal to use as multipurpose practical cleaner spray and wipe.
  Eliminates bad odors, Natural Room Freshener, Pot pourri and shoo away insect and mosquitoes.
  ",
  title2: "Extra Protection",
  description2: "
  Spray and leave it for a minute on your delivery goods, parcels or foods plastic outter layer before unpack.
  Bring along as a disinfectant spray on car seat/ handle and public toilet seat. Sanitize with a clean conscience!
  Highly concentrated yet safe to use around + Food grade quality.
  ",
  price: "
  Guard Spray 250ml - IDR 180,000
  Guard Spray 100ml - IDR 90,000
  Guard Spray 1L - IDR 640,000 (Refill)
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'guard-spray.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467710/BUG_OFF_SPRAY_nedkxs.jpg')
product = Product.create!(
  name: "BUG OFF SPRAY",
  category_product: "Spray",
  title: "Skin",
  description: "
  Derived from pure essential oil of Rose Geranium with a friendly floral scent effective to shoo away mosquitoes and ticks. Simply spray on skin every 1-2 hours.
  For Kids: Spray every 2 hours either cloth or skin.
  ",
  title1: "Indoor/Outdoor",
  description1: "
  Apply every 1,5 hours for outdoor activities. Friendly sweet scent for the family. Spray
  ",
  title2: "Yourself + Family",
  description2: "
  Great to use as a natural freshener for room, pot poouri and car. Spray around room, linen, blanket, soft toys for its scent
  and shoo away mosquitoes with a friendly scent from Rose Geranium.
  ",
  price: "
  Bug Off Spray 250ml - IDR 180,000
  Bug Off Spray 100ml - IDR 90,000
  Bug Off Spray 1L - 640,000 (Refill)
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'bugoff-spray.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467718/awaken_spray_nxoq8h.jpg')
product = Product.create!(
  name: "AWAKEN MIST",
  category_product: "Mist",
  description: "
  Aromatherapy Mist with peppermint and hint of woody notes. Designed for all-over use, selected from pure essential oils to transform your mood anywhere, anytime. If you’re looking for something to make you more alert, uplift your soul & make you smile, Awaken mist will have you buzzing.
  Awaken mist suits to use during your meditation, reading time and sun-bathing time. The cooling effect will refresh you in no time. Helps to reduce nausea and headache
  ",
  title1: "Direction",
  description1: "
  Lightly spray into onto body or space. Take a breath and set your intentions. May use as pillow mist, room & car freshener, it’s great to give double spritz on your bag.
  ",
  title2: "Functions",
  description2: "
  Great for motion sickness or On-flight.
  Promote clear airways & breathing esp colds & flu.
  Body mist, Pillow spray and Natural Perfume.
  Soothes skin from itchy and sun-burn.
  ",
  price: "
  Awaken Mist 250ml - IDR 180,000
  Awaken Mist 100ml - IDR 90,000
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'awaken-mist.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467713/LAVENDER_MIST_jtq7sy.jpg')
product = Product.create!(
  name: "LAVENDER MIST",
  category_product: "Mist",
  description: "
  Aromatherapy Mist designed for all-over use, selected from pure essential oils to transform your mood anywhere, anytime.
  Close your eyes and mouth and spray your Aromatherapy Mist from above your head. Inhale deeply and let it transform your mood and wellbeing with a Revitalising, Calming or Balancing scent.
  Prepare for a good night’s sleep by spraying Lavender Mist on your bed linen and pillow before you climb into bed.
  Prepare for a mood booster with Morning Mist as body perfume.
  ",
  title1: "Functions",
  description1: "
  Helps to heal burns, cuts and itchy skin
  Therapeutic essential oil and Floral extract.
  Body mist, Pillow spray and Natural Perfume.
  Calming scent to helps insomnia, headache and nausea.
  ",
  price: "
  Lavender Mist 220ml - IDR 258,000
  Lavender Mist 100ml - IDR 138,000
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'lavender-mist.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467721/MORNING_MIST_pj0udi.jpg')
product = Product.create!(
  name: "MORNING MIST",
  category_product: "Mist",
  description: "
  Aromatherapy Mist designed for all-over use, selected from pure essential oils to transform your mood anywhere, anytime.
  Close your eyes and mouth and spray your Aromatherapy Mist from above your head. Inhale deeply and let it transform your mood and wellbeing with a Revitalising, Calming or Balancing scent.
  Prepare for a good night’s sleep by spraying Lavender Mist on your bed linen and pillow before you climb into bed.
  Prepare for a mood booster with Morning Mist as body perfume.
  ",
  title1: "Functions",
  description1: "
  Helps to heal burns, cuts and itchy skin
  Therapeutic essential oil and Floral extract.
  Body mist, Pillow spray and Natural Perfume.
  Calming scent to helps insomnia, headache and nausea.
  ",
  price: "
  Morning Mist 220ml - IDR 258,000
  Morning Mist 100ml - IDR 138,000
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'morning-mist.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467719/MOON_CANDLE_cc6sim.jpg')
product = Product.create!(
  name: "MOON CANDLE",
  category_product: "Candle",
  title: "Functions",
  description: "
  Helps in Insomia & Anxiety Provide calming effect.
  Neutralize air from pollen, dust and pollution
  Circulate air and increase the quality of air.
  Infused with pure essential oils blend
  100% Pure Beeswax suitable for any age and anywhere.
  ",
  description1: "
  25 hours burn
  ",
  price: "
  Moon Candle - IDR 220,000
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'moon-candle.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467721/STARLIGHT_CANDLE_su0ycu.jpg')
product = Product.create!(
  name: "STARLIGHT CANDLE",
  category_product: "Candle",
  title: "Functions",
  description: "
  Helps in Insomia & Anxiety Provide calming effect.
  Neutralize air from pollen, dust and pollution
  Circulate air and increase the quality of air.
  Infused with pure essential oils blend
  100% Pure Beeswax suitable for any age and anywhere.
  ",
  description1: "
  25 hours burn
  ",
  price: "
  Moon Candle - IDR 220,000
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'starlight-candle.png', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467723/WOODLAND_CANDLE_td8jtp.jpg')
product = Product.create!(
  name: "WOODLAND CANDLE",
  category_product: "Candle",
  title: "Functions",
  description: "
  Helps in Insomia & Anxiety Provide calming effect.
  Neutralize air from pollen, dust and pollution
  Circulate air and increase the quality of air.
  Infused with pure essential oils blend
  100% Pure Beeswax suitable for any age and anywhere.
  ",
  description1: "
  25 hours burn
  ",
  price: "
  Moon Candle - IDR 220,000
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'woodland-candle', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/fogapothecary/image/upload/v1596467708/GYPSY_SPELL_CANDLE_kzcycn.jpg')
product = Product.create!(
  name: "GYPSY SPELL CANDLE",
  category_product: "Candle",
  title: "Functions",
  description: "
  Helps in Insomia & Anxiety Provide calming effect.
  Neutralize air from pollen, dust and pollution
  Circulate air and increase the quality of air.
  Infused with pure essential oils blend
  100% Pure Beeswax suitable for any age and anywhere.
  ",
  description1: "
  25 hours burn
  ",
  price: "
  Moon Candle - IDR 220,000
  ",
  statut: "active",
  user_id: User.where("email = ? ", "fogapothecary@gmail.com")[0].id
)
product.picture1.attach(io: file, filename: 'gypsy-candle', content_type: 'image/jpg')
