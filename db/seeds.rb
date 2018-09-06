# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
  {
    "id": "1",
    "name": "Albin Jaye"
  },
  {
    "id": "2",
    "name": "Dipika Crescentia"
  },
  {
    "id": "3",
    "name": "Ankit Sacnite"
  },
  {
    "id": "4",
    "name": "Galenos Neville"
  },
  {
    "id": "5",
    "name": "Loviise Nagib"
  },
  {
    "id": "6",
    "name": "Ryo Daiki"
  },
  {
    "id": "7",
    "name": "Seyyit Nedim"
  }
]

users.each do |user|
  User.create(user)
end

playlists = [
  {
    "id": "1",
    "owner_id": "2",
    "song_ids": [
      "8",
      "32"
    ]
  },
  {
    "id": "2",
    "owner_id": "3",
    "song_ids": [
      "6",
      "8",
      "11"
    ]
  },
  {
    "id": "3",
    "owner_id": "7",
    "song_ids": [
      "7",
      "12",
      "13",
      "16",
      "2"
    ]
  }
]

playlists.each do |playlist|
  Playlist.create(playlist)
end

songs = [
  {
    "id": "1",
    "artist": "Camila Cabello",
    "title": "Never Be the Same"
  },
  {
    "id": "2",
    "artist": "Zedd",
    "title": "The Middle"
  },
  {
    "id": "3",
    "artist": "The Weeknd",
    "title": "Pray For Me"
  },
  {
    "id": "4",
    "artist": "Drake",
    "title": "God's Plan"
  },
  {
    "id": "5",
    "artist": "Bebe Rexha",
    "title": "Meant to Be"
  },
  {
    "id": "6",
    "artist": "Imagine Dragons",
    "title": "Whatever It Takes"
  },
  {
    "id": "7",
    "artist": "Maroon 5",
    "title": "Wait"
  },
  {
    "id": "8",
    "artist": "Bazzi",
    "title": "Mine"
  },
  {
    "id": "9",
    "artist": "Marshmello",
    "title": "FRIENDS"
  },
  {
    "id": "10",
    "artist": "Dua Lipa",
    "title": "New Rules"
  },
  {
    "id": "11",
    "artist": "Shawn Mendes",
    "title": "In My Blood"
  },
  {
    "id": "12",
    "artist": "Post Malone",
    "title": "Psycho"
  },
  {
    "id": "13",
    "artist": "Ariana Grande",
    "title": "No Tears Left To Cry"
  },
  {
    "id": "14",
    "artist": "Bruno Mars",
    "title": "Finesse"
  },
  {
    "id": "15",
    "artist": "Kendrick Lamar",
    "title": "All The Stars"
  },
  {
    "id": "16",
    "artist": "G-Eazy",
    "title": "Him & I"
  },
  {
    "id": "17",
    "artist": "Lauv",
    "title": "I Like Me Better"
  },
  {
    "id": "18",
    "artist": "NF",
    "title": "Let You Down"
  },
  {
    "id": "19",
    "artist": "Dua Lipa",
    "title": "IDGAF"
  },
  {
    "id": "20",
    "artist": "Taylor Swift",
    "title": "Delicate"
  },
  {
    "id": "21",
    "artist": "Calvin Harris",
    "title": "One Kiss"
  },
  {
    "id": "22",
    "artist": "Ed Sheeran",
    "title": "Perfect"
  },
  {
    "id": "23",
    "artist": "Meghan Trainor",
    "title": "No Excuses"
  },
  {
    "id": "24",
    "artist": "Niall Horan",
    "title": "On The Loose"
  },
  {
    "id": "25",
    "artist": "Halsey",
    "title": "Alone"
  },
  {
    "id": "26",
    "artist": "Charlie Puth",
    "title": "Done For Me"
  },
  {
    "id": "27",
    "artist": "Foster The People",
    "title": "Sit Next to Me"
  },
  {
    "id": "28",
    "artist": "Max",
    "title": "Lights Down Low"
  },
  {
    "id": "29",
    "artist": "Alice Merton",
    "title": "No Roots"
  },
  {
    "id": "30",
    "artist": "5 Seconds Of Summer",
    "title": "Want You Back"
  },
  {
    "id": "31",
    "artist": "Camila Cabello",
    "title": "Havana"
  },
  {
    "id": "32",
    "artist": "Logic",
    "title": "Everyday"
  },
  {
    "id": "33",
    "artist": "Drake",
    "title": "Nice For What"
  },
  {
    "id": "34",
    "artist": "Halsey",
    "title": "Bad At Love"
  },
  {
    "id": "35",
    "artist": "ZAYN",
    "title": "Let Me"
  },
  {
    "id": "36",
    "artist": "Khalid",
    "title": "Love Lies"
  },
  {
    "id": "37",
    "artist": "Post Malone",
    "title": "rockstar"
  },
  {
    "id": "38",
    "artist": "Rudimental",
    "title": "These Days"
  },
  {
    "id": "39",
    "artist": "Liam Payne",
    "title": "Familiar"
  },
  {
    "id": "40",
    "artist": "Imagine Dragons",
    "title": "Thunder"
  }
]

songs.each do |song|
  Song.create(song)
end