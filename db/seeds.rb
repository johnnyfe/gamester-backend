# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Console.destroy_all
Game.destroy_all
Gameplay.destroy_all

puts "Seeding players"

    player1 = Player.create(name: "JuegaGerman", age: rand(18...30), country: "Chile", years_of_experience: rand(0..10), photo_url: "https://image.winudf.com/v2/image/Y29tLm1hbWJlbmdzLmp1ZWdhZ2VybWFuX3NjcmVlbl8yXzE1MTkxNTU5MzBfMDYw/screen-2.jpg?fakeurl=1&type=.jpg");
    player2 = Player.create(name: "PewDiePie", age: rand(18...30), country: "Sweden", years_of_experience: rand(0..10), photo_url: "https://i.ytimg.com/vi/VGt-BZ-SxGI/maxresdefault.jpg");
    player3 = Player.create(name: "ElrubiusOMG", age: rand(18...30), country: "Spain", years_of_experience: rand(0..10), photo_url: "https://marketing4ecommerce.net/wp-content/uploads/2018/07/historia-elrubius.jpg");
    player4 = Player.create(name: "Mrbeast", age: rand(18...30), country: "USA", years_of_experience: rand(0..10), photo_url: "https://pbs.twimg.com/profile_images/994592419705274369/RLplF55e.jpg");
    player5 = Player.create(name: "Fernanfloo", age: rand(18...30), country: "El Salvador", years_of_experience: rand(0..10), photo_url: "https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2018/11/Fernanfloo-Contact-Information.jpg");
    player6 = Player.create(name: "Vegetta777", age: rand(18...30), country: "Spain", years_of_experience: rand(0..10), photo_url: "https://www.alux.com/wp-content/uploads/2017/05/Vegetta777-Net-Worth-576x1024.jpg");
    player7 = Player.create(name: "Rezendeevil", age: rand(18...30), country: "Brazil", years_of_experience: rand(0..10), photo_url: "http://f.i.uol.com.br/folha/treinamento/images/1634513.png");
    player8 = Player.create(name: "Ninja", age: rand(18...30), country: "USA", years_of_experience: rand(0..10), photo_url: "http://f.i.uol.com.br/folha/treinamento/images/1634513.png");

puts "Players seeding Completed"
puts "Seeding consoles"

    console1 = Console.create(name: "PS5", cost: rand(200...500), storage_capacity: 1000, img_url:"https://cdn.vox-cdn.com/thumbor/avQXnY3_y3EE2SbGO_UwMnpZJyM=/0x0:2400x1566/1200x800/filters:focal(1008x591:1392x975)/cdn.vox-cdn.com/uploads/chorus_image/image/67708941/ps5_hardware_render.0.jpg");
    console2 = Console.create(name: "Xbox Series X", cost: rand(200...500), storage_capacity: 1000, img_url: "https://media.gamestop.com/i/gamestop/11108371/Xbox-Series-X?$pdp$");
    console3 = Console.create(name: "Nintendo Switch", cost: rand(200...500), storage_capacity: 2000, img_url: "https://i.gadgets360cdn.com/products/large/1549526400_635_nintendo_switch_db.jpg");
    console4 = Console.create(name: "PS4", cost: rand(200...500), storage_capacity: 2000, img_url: "https://media.wired.com/photos/5a99f809b4bf6c3e4d405abc/master/w_2560%2Cc_limit/PS4-Pro-SOURCE-Sony.jpg");

puts "Consoles seeding Completed"
puts "Seeding games"

    game1 = Game.create(name: "Minecraft", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console3, storage_space: rand(1..100), img_url: "https://image.api.playstation.com/vulcan/img/cfn/11307uYG0CXzRuA9aryByTHYrQLFz-HVQ3VVl7aAysxK15HMpqjkAIcC_R5vdfZt52hAXQNHoYhSuoSq_46_MT_tDBcLu49I.png");
    game2 = Game.create(name: "Fornite", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console4, storage_space: rand(1..100), img_url: "https://cdn2.unrealengine.com/Fortnite%2Fblog%2Fseason-5%2FBR05_Social_-Launch_Hero-Line-Up-1920x1080-2117b3d382b87887271a17a78122b7316ff0c1c0.jpg");
    game3 = Game.create(name: "GTA V", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console2, storage_space: rand(1..100), img_url: "https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png");
    game4 = Game.create(name: "Zelda Breath Of The Wild", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console3, storage_space: rand(1..100), img_url: "https://cdn.vox-cdn.com/thumbor/Xm1C9TWbMK55zAnuR09oD6XMyRI=/0x0:1024x1024/1200x800/filters:focal(444x567:606x729)/cdn.vox-cdn.com/uploads/chorus_image/image/65813576/mobile_MarioKartTour_screen_01.0.png");
    game5 = Game.create(name: "Spiderman Miles Morales", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console1, storage_space: rand(1..100), img_url: "https://image.api.playstation.com/vulcan/ap/rnd/202008/1020/PRfYtTZQsuj3ALrBXGL8MjAH.jpg");
    game6 = Game.create(name: "Mario Kart 8", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console3, storage_space: rand(1..100), img_url: "https://www.nintendo.com//content/dam/noa/en_US/games/switch/m/mario-kart-8-deluxe-switch/mario-kart-8-deluxe-switch-hero.jpg");
    game7 = Game.create(name: "Jump Force", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console4, storage_space: rand(1..100), img_url: "https://cdn-ext.fanatical.com/production/product/1280x720/840c4611-c0a4-44d2-a946-d6ad8a8ed07d.jpeg");
    game8 = Game.create(name: "Halo Infinite", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console2, storage_space: rand(1..100), img_url: "hhttps://compass-ssl.xbox.com/assets/49/b6/49b6313d-375e-49ba-b08b-3e7bf67d8928.jpg?n=Halo-Infinite_GLP-Page-Hero-1084_Poster-Image_1920x1080.jpg");
    game9 = Game.create(name: "Flight Simulator 2020", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console2, storage_space: rand(1..100), img_url: "https://www.epingi.com/wp-content/uploads/2020/05/Microsoft-Flight-Simulator-2020-Alpha-3-PC-Version-Full-Game-Setup-Free-Download.jpg");
    game10 = Game.create(name: "Red Dead Redemption II", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console1, storage_space: rand(1..100), img_url: "https://api.cdkeybay.com/static/bbc99843f82c0212477c258f.jpg");
    game11 = Game.create(name: "Resident Evil Village", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console1, storage_space: rand(1..100), img_url: "https://www.residentevil.com/village/assets/images/common/share.png");
    game12 = Game.create(name: "Sekiro Shadows Die Twice", category: Faker::Game.genre, rate: rand(1..10), average_length: rand(30..60), console: console4, storage_space: rand(1..100), img_url: "https://compass-ssl.xbox.com/assets/d5/54/d554ce9b-cca1-4ad0-88d3-6811cb007ddc.jpg?n=Sekiro-Shadows-Die-Twice_GLP-Page-Hero-1084_1920x1080.jpg");

puts "Games seeding Completed"
puts "Seeding gameplays"

    gameplay1 = Gameplay.create(title: "#{player6.name} playing #{game5.name} in #{console1.name}", likes: 0, video_url: "https://www.youtube.com/embed/YeRCuCVFbns", player: player6, game: game5);
    gameplay2 = Gameplay.create(title: "#{player3.name} playing #{game3.name} in #{console4.name}", likes: 0, video_url: "https://www.youtube.com/embed/8o6Snw5IEu4", player: player3, game: game3);
    gameplay3 = Gameplay.create(title: "#{player8.name} playing #{game2.name} in #{console2.name}", likes: 0, video_url: "https://www.youtube.com/embed/GpKECYZWTp8", player: player8, game: game2);
    gameplay4 = Gameplay.create(title: "#{player4.name} playing #{game9.name} in #{console2.name}", likes: 0, video_url: "https://www.youtube.com/embed/os8d6CqbiVs", player: player4, game: game9);
    gameplay5 = Gameplay.create(title: "#{player2.name} playing #{game1.name} in #{console4.name}", likes: 0, video_url: "https://www.youtube.com/embed/VGt-BZ-SxGI", player: player2, game: game1);
    gameplay6 = Gameplay.create(title: "#{player5.name} playing #{game6.name} in #{console3.name}", likes: 0, video_url: "https://www.youtube.com/embed/1CQyiM4n3IY", player: player5, game: game6);

puts "Seeding Completed"
