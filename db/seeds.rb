#here is where I will create some seed data to test associations

emrich = User.create(name: "emrich", username: "emrichmp", password: "password")
rahel = User.create(name: "rahel", username: "paprika", password: "yeet")

AOT = Anime.create(name: "AOT", fav_character: "eren", rating: 10, user_id: emrich.id)
JJK = Anime.create(name: "JJK", fav_character: "Sukuna", rating: 9, user_id: rahel.id)