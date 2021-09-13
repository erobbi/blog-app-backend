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
    Blog.create(
    title: "Bruh moment",
    content: "The content of stuff",
    user_id: 1,
    img_url: "no thanks",
    likes: 100
    )
    Comment.create(
    content: "The comment",
    blog_id: 1
    )
