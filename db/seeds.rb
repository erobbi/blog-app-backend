puts 'Seeding!'

eli = User.create(
    username: "eliTest", 
    password_digest: "1111", 
    img_url: "no thanks", 
    name: "eli", 
    birthdate: "the year 1", 
    email: "none of your business"
    )

