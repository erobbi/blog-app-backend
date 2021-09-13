puts 'Seeding!'

eli = User.create(
    username: "eliTest", 
    password: "1111", 
    password_confirmation: "1111",
    img_url: "no thanks", 
    name: "eli", 
    birthdate: "the year 1", 
    email: "none of your business"
    )
