# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = user = User.create! :email => 'admin@nimbusfly.co', :password => 'topsecret', :password_confirmation => 'topsecret', :first_name => 'Admin', :last_name => 'Test'

retailers = Retailer.create!([
  {
    image_url:"http://purereleaf.ca/images/logo-pr.png",
    name: 'Pure Releaf',
    address: '897 dundas st w, Toronto, ON CA',
    description: 'Dedicated to the betterment of our fellow neighbours, we source and distribute medicinal cannabis products of the utmost quality. We specialize in a variety of products including flowers, concentrates, Pre-rolls, and others.',
    mail: true,
    delivery: false,
    pickup: false,
    email: "peter@nimbusfly.co",
    phone_number: "6477485323"
  },
  {
    image_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ7g9gbIGklD-DJX6WRwNeIjUAgy0QmjFV7TF9a9u4MGlIaQCBDNw',
    name: 'Modern Apothecarium - Demo',
    address: '474 Victoria Park Ave, M4A 2M5',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: false,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'http://smoke-box.com/wp-content/themes/smoke_box/images/slide41.jpg',
    name: 'The High Line - Demo',
    address: '2012 Neilson Avenue, M1M 1V1',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: true,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
])

retailers.each do |retailer|
  if retailer.name == 'Pure Releaf'
    retailer.products.create!([
      {
        name: "OCTOBER'S VERY OWN",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [11, 35, 70, 130, 250],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "LINDSAY O.G.",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [11, 35, 70, 130, 250],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "DEATH BUBBA",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "Purple Candy",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "FIRE O.G",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "BUBBA OG",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "MATARO BLUE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "PURPLE KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "PURPLE GOD",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "ROCKSTAR",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "MASTER KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [6, 20, 40, 75, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "DIAMOND OG",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "UBC CHEMO KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [6, 20, 40, 75, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "MOBY DICK",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "KISH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "BUBBA KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [6, 20, 40, 75, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "UBC CHEMO",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "NUKEN",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "VIPER",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "MANGO HAZE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "MOBY DICK",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "MANGO HAZE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "HAWAIIAN",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [6, 20, 40, 75, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "SUPER LEMON HAZE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "PURP VOODOO",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "AK-47",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "SHISKABERRY",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "ORANGE KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "SUPER LEMON HAZE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "SKUNK BERRY",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "BURMESE KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "WHITE WIDOW",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Candy Kush",
        images: ["./assets/img/shatter_hover.png"],
        prices: [25],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
        name: "Ambrosia",
        images: ["./assets/img/shatter_hover.png"],
        prices: [25],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
        name: "Green Crack",
        images: ["./assets/img/shatter_hover.png"],
        prices: [35],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
        name: "Madonna",
        images: ["./assets/img/shatter_hover.png"],
        prices: [35],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
        name: "Phyto: AF GOO",
        images: ["./assets/img/shatter_hover.png"],
        prices: [50],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Concentrates"
      },
      {
        name: "Pre-Rolled",
        images: ["./assets/img/prerolls.jpg"],
        prices: [5],
        price_labels: ["each"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Pre-rolls"
      },
      {
        name: "Pre-Rolled",
        images: ["./assets/img/prerolls.jpg"],
        prices: [5],
        price_labels: ["each"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Pre-rolls"
      },
      {
        name: "Pre-Rolled",
        images: ["./assets/img/prerolls.jpg"],
        prices: [5],
        price_labels: ["each"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Pre-rolls"
      }
    ])
  else
    retailer.products.create!([
        {
          name: "OG Kush",
          images: ["./assets/img/OG_kush.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./assets/img/Girl_Scout.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./assets/img/Sour_Diesel.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./assets/img/Sour_Diesel.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./assets/img/Shake_Mix.jpg"],
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
          images: ["./assets/img/Kraken84.jpeg"],
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
          images: ["./assets/img/smoresbrownie.png"],
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
          images: ["./assets/img/sprig.jpg"],
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
          images: ["./assets/img/shatter_hover.png"],
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
          images: ["./assets/img/wax_hover.png"],
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
          images: ["./assets/img/prerolls.jpg"],
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
          images: ["./assets/img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./assets/img/smoke_cartel_sesh_supply_gaia_faberge_egg_water_pipe.png"],
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
          images: ["./assets/img/smoke_cartel_sesh_supply_orion_cube_perc_recycler.png"],
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
