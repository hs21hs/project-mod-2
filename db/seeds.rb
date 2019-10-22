# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username:"haider", password:1, bio:"i am a test user")
# Picture.create(image_url:"https://www.shutterstock.com/image-photo/ferrari-f12berlinetta-lowkey-captures-las-vegas-1254580537")
# Album.create(main:true, album_name:"haiders main album", user_id:1)
# AlbumPicture.create(album_id:1, picture_id:1)

# User.create(username:"mandy", password:2, bio:"i am the 2nd test user")
# Picture.create(image_url:"http://3.bp.blogspot.com/-JRziNA-0wug/TldEGQBgHWI/AAAAAAAAXYA/XDjUJCM1o3M/s1600/Nice%2Bcar%2Bimages-4.jpg")
# Album.create(main:true, album_name:"madys main album", user_id:2)
# AlbumPicture.create(album_id:2, picture_id:2)

# Picture.create(image_url:"http://1.bp.blogspot.com/-6S0rKgWCM48/TldEGJW7NjI/AAAAAAAAXX4/ETP1o8H-jQo/s1600/Nice%2Bcar%2Bimages-3.jpg")

# Picture.create(image_url:"http://4.bp.blogspot.com/-aWUAYlseIf8/TldEFwMb6uI/AAAAAAAAXXw/jG81eruoB9Q/s1600/Nice%2Bcar%2Bimages-2.jpg")

# AlbumPicture.create(album_id:2, picture_id:3)
# AlbumPicture.create(album_id:1, picture_id:4)

u1 = User.create(username: "Sarah", password: "sarah1", bio: "Life is an adventure...")

a1 = Album.create(album_name: "Inspo", main: false, user_id: u1.id)

p1 = Picture.create(image_url: "https://images.unsplash.com/photo-1567923623191-f8110dc667db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")

ap1 = AlbumPicture.create(album_id: a1.id, picture_id: p1.id)

