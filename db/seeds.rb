puts 'Seeding!'
Comment.destroy_all
Blog.destroy_all
User.destroy_all

eli = User.create(
    username: "eliTest", 
    password: "1111", 
    password_confirmation: "1111",
    img_url: "https://cdn.vox-cdn.com/thumbor/FEawP_AqJiJxEQhXS_Vt7R2x5po=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969337/spiderman_homecoming_movie_screencaps.com_7984.jpg", 
    name: "eli Robbins", 
    birthdate: "10-01-1996", 
    email: "abc@defg.com"
    )
    Blog.create(
    title: "How to Customize your Terminal for Mac",
    description: "Let's talk about those Mac",
    content: "There is a lot of syntax that must be be learned before making very creative and useful modifications to you zsh. By the way, zsh is short for Z shell, which is actually a default Mac application that acts as a “shell” to look at your operating system in a more friendly way.
    That being said, I don’t find Zsh very pretty and neither should you!
    Enter Powerlevel10k! The zsh theme editor that will help you add color to your life!",
    user_id: 1,
    img_url: "https://i1.wp.com/www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-02.jpg?resize=575%2C419",
    likes: 100
    )
    Comment.create(
    content: "The Best blog Ever!!! Loved it!",
    blog_id: 1, user_id: 2
    )
    Blog.create(
        title: "Tools that Every Coder Should Have",
        description: "Bracket Pair Colorizer and vscode extensions",
        content: "VS Code has become my primary code editor (with Terminal being my second). I used to use PyCharm…but then I switched to learning Ruby, hence VS Code.
        When using VS Code, you should always enable/disable extensions based on what language you are programming in.
        For those not aware, extensions can be found on the sidebar of your editor.
        ",
        user_id: 1,
        img_url: "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
        likes: 30
        )
    Comment.create(
    content: "Eli's writing is phenomenal!!",
    blog_id: 2, user_id: 2
    )
    Comment.create(
    content: "Can't wait to see his next post!",
    blog_id: 2, user_id: 3
    )
    Comment.create(
    content: "Awesome!!!! Fun to read.",
    blog_id: 2, user_id: 2
    )

jessica = User.create(
    username: "Jessica", 
    password: "1111", 
    password_confirmation: "1111",
    img_url: "https://upload.wikimedia.org/wikipedia/en/f/f6/Scarlett_Johansson_as_Black_Widow.jpg", 
    name: "Jessica Lee", 
    birthdate: "03-01-1990", 
    email: "bcd@efgh.com"
    )
    Blog.create(
    title: "Smarter ways to improve front-end UI skills with tools",
    description: "work smarter not harder",
    content: "This is a web application that allows you to determine how much ‘npm’ package to add to our total bundle size. If we work in modern app, we want to keep our bundle size as small as possible to optimize the initial page load for the users. Bundle phobia is very easy to analyze the addition of files to a new project. Just entering the package name, it will tell us the bundle size, download time and bunch of other information for a new version of the package. You can also check our size of JSON with lots of dependencies.
    
    Since I have been learning Ruby, I started to learn the basic SQL. and then after I have learn ‘Active Record’ and ‘Rake’ after that, that helps me whole lot easier to work on the project. That’s why I was curious about the gems and would like to learn more about those besides the basic gems I already know (Rake, Sinatra, ActiveRecord).",
    user_id: 2,
    img_url: "https://www.adoptandshop.org/wp-content/uploads/2020/01/joe-caione-781415-unsplash.jpg",
    likes: 70
    )
    Comment.create(
    content: "How dare can you miss her post?",
    blog_id: 3, user_id: 1
    )
    Blog.create(
        title: "Regex. Who are you?",
        description: "Meeting New Expression During JavaScript Developing",
        content: "A regular expression (shortened as regex or regexp; also referred to as rational expression) is a sequence of characters that specifies a search pattern. Usually such patterns are used by string-searching algorithms for “find” or “find and replace” operations on strings, or for input validation.
        This expression starts with Slash(/), ends with Slash(/).
        ‘g’, means global, match every character. Without this letter, regex only matches the very first one. It follows by slash(/g).
        ‘i’, means case insensitive, match any character either upper or lower. It also follows by slash(/gi).
        ‘m’, means multi line, in order to find the beginning of the multiple line, we use ‘m’ after slash(/gm)",
        user_id: 2,
        img_url: "https://www.omfif.org/wp-content/uploads/2020/03/random-shocks-newweb.jpg",
        likes: 40
        )
    Comment.create(
    content: "writing skill needs to be improved.",
    blog_id: 4, user_id: 2
    )
    Comment.create(
    content: "So glad to find this post!",
    blog_id: 4, user_id: 1
    )
    Comment.create(
    content: "So funny and easy to read!!!",
    blog_id: 4, user_id: 3
    )


mark = User.create(
    username: "Mark", 
    password: "1111", 
    password_confirmation: "1111",
    img_url: "https://static.wikia.nocookie.net/marveldatabase/images/a/a0/Peter_Parker_%28Earth-199999%29_from_Spider-Man_Far_from_Home_promotional_004.jpg/revision/latest?cb=20191002161238", 
    name: "Mark Fullen", 
    birthdate: "04-11-1998", 
    email: "cde@fghi.com"
    )
    Blog.create(
    title: "Redux — What is it?
    ",
    description: "Let's talk about redux, open-source library",
    content: "There are a lot of unfamiliar words typically thrown around in a tech environment, Rails, React, Redux, SQL all seem like shorthand gibberish for tools that we use daily, and that’s because they are. Coding is an ever-evolving world, and with such, new and exciting add-ons have become a meta in productivity (I mean, have you ever used TabNine?!), and one of those tools is Redux.
    
    Redux is an open-source library, similar to React, we use JavaScript(and sometimes Angular) to write our code, but Redux and React help the user with easier management and organization. Created by Dan Abramov and Andrew Clark in 2015, when Abramov had some prophetic vision about futuristic code, and in February of 2019, the useReducer hook was added to React. Redux is mainly used for state, the moving parts around our apps that users interact with. This makes UI’s (or User Interfaces) much easier to make and maintain.
    ",
    user_id: 3,
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqFpCOW-8yzegmvS7Nf_Lg98UuAfIoEE-nQA&usqp=CAU",
    likes: 37
    )
    Comment.create(
    content: "Duh!!! Bruh!!! There is a moment!",
    blog_id: 5, user_id: 2
    )
    Blog.create(
        title: "The Faker Gem— A Ruby Concept",
        description: "Not the rocks, but the vast libraries of Ruby gem files that can help improve productivity ",
        content: "This is the code from one of my latest Flatiron projects, where we seeded video game data with Faker. Faker has many built in libraries, many relating to pop-culture which can make for really applicable substitutes! With the ‘Faker::Game’ category we can generate a Game name, platform and genre, so for numerical values, we added in the ‘rand’ to get a range of random numbers. One important thing to note is to make sure the data on the table in the seed file matches the data the table is expecting from you, otherwise nothing could happen, or you could run into an error! To run our current file through the terminal to seed the database we would simple run",
        user_id: 3,
        img_url: "http://www.mandysam.com/img/random.jpg",
        likes: 387
        )
    Comment.create(
    content: "How about writing something about Flatiron school?",
    blog_id: 6, user_id: 3
    )
    Comment.create(
    content: "So impressed! Loved to read this post.",
    blog_id: 6, user_id: 1
    )
    Comment.create(
    content: "Might need to stay up all night.",
    blog_id: 6, user_id: 1
    )

    puts 'Done!!'

