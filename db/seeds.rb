# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
CheerUp.destroy_all

u = User.create(firstname: 'Arthur', lastname: 'McLovin', bio: 'Readymade occaecat salvia chillwave meggings single-origin coffee. Irure dolor dolore locavore aute pitchfork, pug wolf. Organic quinoa tousled keffiyeh gentrify lomo, keytar cardigan id ad culpa voluptate 3 wolf moon quis sriracha. Odd Future YOLO exercitation non, Bushwick odio cardigan Echo Park Schlitz salvia labore keffiyeh Neutra gentrify bespoke. Authentic consequat try-hard excepteur narwhal. Ullamco craft beer freegan, pariatur intelligentsia Neutra seitan VHS authentic kale chips consectetur duis. Neutra beard Wes Anderson, lomo irure food truck mumblecore ea shabby chic biodiesel cliche.', password: 'password', password_confirmation: 'password', email: 'arthur@gmail.com')

u.save

c = CheerUp.create(
  user_id: u.id,
  content: 'Wine is constant proof that God loves us and loves to see us happy.',
  latitude: '51.502278',
  longitude: '-0.111237'
  )
c = CheerUp.create(
  user_id: u.id
  content: 'The purpose of our lives is to be happy.',
  latitude: '51.50708',
  longitude: '-0.163765'
  )
c = CheerUp.create(
  user_id: u.id,
  content: 'A table, a chair, a bowl of fruit and a violin; what else does a man need to be happy?',
  latitude: '51.501269',
  longitude: '-0.141964'
  )

u = User.create(
  firstname: 'Sadie',
  lastname: 'Saunders',
  bio: 'Squid occupy cupidatat assumenda accusamus, food truck 8-bit thundercats ea. Ad vinyl PBR, Vice nostrud Pinterest delectus chillwave swag labore ea. Echo Park veniam organic shoreditch, sint dolore lo-fi id Williamsburg thundercats Truffaut adipisicing nesciunt. Ad aesthetic vero tote bag, disrupt mixtape butcher retro aliquip nihil asymmetrical polaroid proident occaecat intelligentsia. Readymade church-key american apparel craft beer, Odd Future VHS incididunt blog shabby chic hoodie. Cray whatever deserunt Banksy laboris, artisan dolor post-ironic fingerstache mixtape fixie chambray mumblecore veniam. Duis meggings ex, twee gluten-free biodiesel seitan chillwave bicycle rights narwhal cray.',
  email: 'sadie@gmail.com',
  password: 'password',
  password_confirmation: 'password'
  )

u.save

c = CheerUp.create(
  user_id: u.id,
  content: 'Most folks are as happy as they make up their minds to be.',
  latitude: '51.50034',
  longitude: '-0.162349'
  )
c = CheerUp.create(
  user_id: u.id,
  content: 'It\'s Gin O\'Clock!!!!',
  latitude: '51.500607',
  longitude: '-0.173593'
  )
c = CheerUp.create(
  user_id: u.id,
  content: 'I don\'t know the problem but alcohol is the answer',
  latitude: '51.497374',
  longitude: '-0.170288'
  )

u = User.create(
  firstname: 'Ramit',
  lastname: 'Baldeep',
  bio: 'Tousled fugiat nulla, yr excepteur before they sold out shabby chic Tonx selfies jean shorts synth sed semiotics duis cliche. Cardigan thundercats kitsch sustainable, YOLO Etsy pug wolf asymmetrical chambray banjo qui. Shabby chic magna american apparel, Tonx irony leggings chillwave. Typewriter artisan excepteur, you probably havent heard of them irony aute fugiat. Brooklyn qui consectetur, aesthetic bicycle rights adipisicing ethnic laborum master cleanse lomo velit plaid selfies organic whatever. Consectetur McSweeneys magna, pug direct trade lo-fi accusamus tousled chillwave master cleanse. Truffaut street art typewriter stumptown duis tempor.',
  email: 'damitramit@gmail.com',
  password: 'password',
  password_confirmation: 'password'
  )

u.save

c = CheerUp.create(
  user_id: u.id,
  content: 'Do not take life too seriously. You will never get out of it alive.',
  latitude: '51.500607',
  longitude: '-0.173593'
  )
c = CheerUp.create(
  user_id: u.id,
  content: 'Don\'t worry, be happy',
  latitude: '51.497374',
  longitude: '-0.170288'
  )
c = CheerUp.create(
  user_id: u.id,
  content: 'Puppys, puppys, puppys, puppys, puppys, puppys, puppys, puppys, puppys, puppys, puppys, puppys!!!',
  latitude: '51.497463',
  longitude: '-0.018711'
  )
u = User.create(
  firstname: 'Test',
  lastname: 'Test',
  bio: 'Thundercats banjo laborum, High Life asymmetrical ethical aesthetic excepteur gastropub twee Bushwick. Laboris artisan ut, dolor craft beer swag esse. PBR aliquip vegan proident. Ugh selfies four loko +1 Vice, narwhal synth veniam salvia non helvetica. Tousled pitchfork master cleanse, wolf deserunt nostrud church-key lo-fi Carles Terry Richardson pop-up non thundercats selvage squid. Roof party YOLO pork belly cray pug. Tattooed Carles vegan dolore, locavore pitchfork selvage fap sriracha DIY.',
  email: 'test@gmail.com',
  password: 'password',
  password_confirmation: 'password'
  )

u.save

c = CheerUp.create(
  user_id: u.id,
  content: 'Don\'t think of kittens!.',
  latitude: '51.506913',
  longitude: '-0.183334'
  )
c = CheerUp.create(
  user_id: u.id,
  content: 'Be Happy :D',
  latitude: '51.516101',
  longitude: '-0.098877'
  )
c = CheerUp.create(
  user_id: u.id,
  content: 'Jesus Loves you. (That\'s his job)',
  latitude: '51.515673',
  longitude: '-0.131493'
  )

