# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = user = User.create! :email => 'admin@nimbusfly.co', :password => 'topsecret', :password_confirmation => 'topsecret'

retailers = Retailer.create!([
  {
    image_url: 'https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad32b3f8baf35958c26d38/56b93a2f01dbae64ff7226d5/1456210131673/279A6571.jpg?format=500w',
    name: 'Alair Vaporizer',
    address: '588 Dufferin Street, M4A 2M5',
    description: 'Extend the good life to the air you breathe. With a subtle profile and a joyful disposition, an Alair vaporizer is enjoyable, portable and rarely out of place. Whatever your lifestyle, just plug, vape and play.',
    mail: true,
    delivery: true,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ7g9gbIGklD-DJX6WRwNeIjUAgy0QmjFV7TF9a9u4MGlIaQCBDNw',
    name: 'Modern Apothecarium',
    address: '474 Victoria Park Ave, M4A 2M5',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: false,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
  image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbdSNJNo93KSBu2IJZSZSD_4EDCVpVHdh7a39exPGrQC_6pfpMVA",
  name: 'The Green Cross',
  address: '2012 Neilson Avenue, M1M 1V1',
  description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
  mail: true,
  delivery: true,
  pickup: true,
  email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'http://smoke-box.com/wp-content/themes/smoke_box/images/slide41.jpg',
    name: 'The High Line',
    address: '170 Islington Ave, M9V 2X5',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: true,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'https://pbs.twimg.com/media/CVaQybOXIAAPrwG.png',
    name: 'Shambhala Healing',
    address: '2792 Adelaide St, M5H 1P6',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: false,
    pickup: false,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  }
])

retailers.each do |retailer|
  if retailer.name == 'Alair Vaporizer'
    retailer.products.create!([
      {
        name: "Vaporizer Starter Kit",
        images: ["https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/56b93c5662cd942d9bbe7c5e/1454980185264/279A61491.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/56b93c568a65e27e69cd08f2/1456207918261/279A61411.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/56cbf7f11bbee05e52d8373e/1456207918075/279A6219.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/56b93c578a65e27e69cd08f6/1456207918264/279A60111.jpg?format=1500w"],
        prices: [125],
        price_labels: ["each"],
        description: "Dressed all in black with a touch of gold, the classic ALAIR Vaporizers are well-suited to any occasion. Each vaporizer comes with a filled cartridge that will last 150+ draws and USB charger adaptor.
(THC) Tetrahydrocannabinol: 274mg(68%) 1.82mg Per Draw
(CBD) Cannabidiol: 1.4mg(0.35%) 0.01mg Per Draw
(CBN) Cannabinol: 0mg(0%) 0.00mg Per Draw

Ingredients: Pure CO2 Extracted Cannabis Oil Processed with Food Grade Ethanol.",
        thc: 68,
        cbd: 0.35,
        subspecies: "Hybrid",
        category: "Vaporizers"
      },
      {
        name: "Filled Cartridge - Single",
        images: ["https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/577d1cc0ff7c50f540e26b7b/1467817153466/279A6192%2Bsingle.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/577d1cbcff7c50f540e26b5e/1467817149101/1cartridge.jpg?format=1500w"],
        prices: [75],
        price_labels: ["each"],
        description: "Each cartridge comes filled with 150+ draws, and is easy to load into your existing Alair vaporizer.
 Girl Scout Cookies Quad A Buds used to give testing results in each:
 (THC) Tetrahydrocannabinol: 274mg(68%) 1.82mg Per Draw
 (CBD) Cannabidiol: 1.4mg(0.35%) 0.01mg Per Draw
 (CBN) Cannabinol: 0mg(0%) 0.00mg Per Draw

 Ingredients: Pure CO2 Extracted Cannabis Oil Processed with Food Grade Ethanol.",
        thc: 68,
        cbd: 0.35,
        subspecies: "Hybrid",
        category: "Cartridges"
      },
      {
        name: "Filled Cartridge - Single (CBD)",
        images: ["https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/577d1cc0ff7c50f540e26b7b/1467817153466/279A6192%2Bsingle.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/577d1cbcff7c50f540e26b5e/1467817149101/1cartridge.jpg?format=1500w"],
        prices: [50],
        price_labels: ["each"],
        description: "Each cartridge comes filled with 150+ draws, and is easy to load into your existing ALAIR Vaporizer.
 Quantum Kush:
 Tetrahydrocannibinol (THC) 185mg(42%) 1.2mg Per Draw
 Cannabidiol (CBD) 34mg(8%) 0.2mg Per Draw
 Cannabinol (CBN)",
        thc: 42,
        cbd: 8,
        subspecies: "Hybrid",
        category: "Cartridges"
      }
    ])
  else
    retailer.products.create!([
      {
          name: "OG Kush",
          images: ["./img/OG_kush.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
          prices: [15, 45, 80, 150, 280],
          price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
          description: "OG Kush is cherished for its ability to crush stress under the weight of its heavy euphoria. It carries an earthy pine and sour lemon scent with woody undertones, an aroma that has become the signature of OG Kush varieties and descendants.",
          thc: 19.5,
          cbd: 5,
          subspecies: "Indica",
          category: "Flowers"
        },
        {
          name: "Girl Scout Cookies",
          images: ["./img/Girl_Scout.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
          prices: [15, 45, 80, 150, 280],
          price_labels: ["Gram (1g)", "chighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
          description: "With a sweet and earthy aroma, Girl Scout Cookies launches you to euphoria’s top floor where full-body relaxation meets a time-bending cerebral space. A little goes a long way with this hybrid, whose THC heights have won Girl Scout Cookies numerous Cannabis Cup awards.",
          thc: 26.5,
          cbd: 3,
          subspecies: "Hybrid",
          category: "Flowers"
        },
        {
          name: "Sour Diesel",
          images: ["./img/Sour_Diesel.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
          prices: [15, 45, 80, 150, 280],
          price_labels: ["Gram (1g)", "Echghth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
          description: "Sour Diesel, sometimes called Sour D, is an invigorating sativa named after its pungent, diesel-like aroma. This fast-acting strain delivers energizing, dreamy cerebral effects that have pushed Sour Diesel to its legendary status. Stress, pain, and depression fade away in long-lasting relief that makes Sour Diesel a top choice among medical patients.",
          thc: 20.5,
          cbd: 1,
          subspecies: "Sativa",
          category: "Flowers"
        },
        {
          name: "Train Wreck",
          images: ["./img/Sour_Diesel.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
          prices: [15, 45, 80, 150, 280],
          price_labels: ["Gram (1g)", "Echghth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
          description: "Trainwreck is a mind-bending hybrid with potent sativa effects that hit like a freight train. Mexican and Thai sativas were bred with Afghani indicas to produce this Northern California staple, passing on a sweet lemon and spicy pine aroma. Trainwreck begins its speedy hurtle through the mind with a surge of euphoria, awakening creativity and happiness.",
          thc: 18.5,
          cbd: 8,
          subspecies: "Hybrid",
          category: "Flowers"
        },
        {
          name: "Shake Mix",
          images: ["./img/Shake_Mix.jpg"],
          prices: [80, 150, 280],
          price_labels: ["Eighth (3.5gch", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 15,
          cbd: 5,
          subspecies: "Hybrid",
          category: "Flowers"
        },
        {
          name: "Milk Chocolate Bar",
          images: ["./img/Kraken84.jpeg"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 15,
          cbd: 5,
          subspecies: "Hybrid",
          category: "Edibles"
        },
        {
          name: "Smores Brownie",
          images: ["./img/smoresbrownie.png"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 15,
          cbd: 5,
          subspecies: "Hybrid",
          category: "Edibles"
        },
        {
          name: "Cannabis Pop",
          images: ["./img/sprig.jpg"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 15,
          cbd: 5,
          subspecies: "Hybrid",
          category: "Edibles"
        },
        {
          name: "Premium Shatter",
          images: ["./img/shatter_hover.png"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 15,
          cbd: 5,
          subspecies: "Hybrid",
          category: "Concentrates"
        },
        {
            name: "Premium Wax",
          images: ["./img/wax_hover.png"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 15,
          cbd: 5,
          subspecies: "Hybrid",
          category: "Concentrates"
        },
        {
            name: "Bubba Kush",
          images: ["./img/prerolls.jpg"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 19,
          cbd: 5,
          subspecies: "Indica",
          category: "Pre-rolls"
        },
        {
            name: "Jack Herer",
          images: ["./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 21,
          cbd: 5,
          subspecies: "Sativa",
          category: "Pre-rolls"
        },
        {
            name: "Bong",
          images: ["./img/smoke_cartel_sesh_supply_gaia_faberge_egg_water_pipe.png"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 15,
          cbd: 5,
          subspecies: "Hybrid",
          category: "Other"
        },
        {
            name: "Bubbler Oil Rig",
          images: ["./img/smoke_cartel_sesh_supply_orion_cube_perc_recycler.png"],
          prices: [18],
          price_labels: ["each"],
          description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
          thc: 15,
          cbd: 5,
          subspecies: "Hybrid",
          category: "Other"
        }
    ])
  end
end
