# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.delete_all
Category.delete_all
User.delete_all
Tagging.delete_all
Tag.delete_all
Comment.delete_all

# categories
@category_lifestyle = Category.create({category_name: 'Lifestyle'})
@category_hairstyle = Category.create({category_name: 'Hairstyle'})
@category_food = Category.create({category_name: 'Food'})
@category_workout = Category.create({category_name: 'Workout'})
@category_science = Category.create({category_name: 'Science'})

# tags
@tag_home = Tag.create({tag_name: 'Home'})
@tag_hairL = Tag.create({tag_name: 'Short hair'})
@tag_hairT = Tag.create({tag_name: 'Curly'})
@tag_meal = Tag.create({tag_name: 'Meal'})
@tag_fitness = Tag.create({tag_name: 'Fitness'})
@tag_ab = Tag.create({tag_name: 'Abs'})
@tag_chemicals = Tag.create({tag_name: 'Chemicals'})

# users
@sanaa = User.create({first_name: 'Sanaa', last_name: 'Syed', email: 'sanaa.syed@shopify.com'})
@brianna = User.create({first_name: 'Brianna', last_name: 'Bachan', email: 'briannabachan@gmail.com'})
@hari = User.create({first_name: 'Hari', last_name: 'Muhanthan', email: 'hari.muhanthan@yahoo.com'})
@gina = User.create({first_name: 'Gina', last_name: 'Bak', email: 'gina.bak@shopify.com'})
@sweta = User.create({first_name: 'Sweta', last_name: 'Jeya', email: 'swetaj28@gmail.com'})

# posts
@post_1 = Post.create!(title: '2019 in a year review', content: "It's halfway through 2019, and to say it has been amazing would be an understatement. These past 12 months have been like nothing that I had been ready for.", date: Date.today, user: @sanaa, category: @category_lifestyle)
@post_2 = Post.create!(title: 'Quick and Easy Back-to-School Hairstyles', content: "Can y’all believe that it’s time to go back to school?! Time to being on the packed lunches, carpools, and soccer games. The first day of school is just around the corner, and finding the perfect look is a must. 1- Half-up Bow Combo: I love half-up hairstyles. The bow is super adorable, and you can never go wrong with a combo braid. This is a great way for the littles to keep their hair out of their face.", date: Date.today, user: @brianna, category: @category_hairstyle)
@post_3 = Post.create!(title: 'How to make the perfect pie', content: "Dice the butter and return it to the refrigerator while you prepare the flour mixture. Place the flour, salt, and sugar in the bowl of a food processor fitted with a steel blade and pulse a few times to mix. Add the butter and shortening. Pulse 8 to 12 times, until the butter is the size of peas. With the machine running, pour the ice water down the feed tube and pulse the machine until the dough begins to form a ball. Dump out on a floured board and roll into a ball. Wrap in plastic wrap and refrigerate for 30 minutes.", date: Date.today, user: @hari, category: @category_food)
@post_4 = Post.create!(title: 'Hot Yoga', content: "Inferno Hot Pilates (aka: Inferno Hot HIIT) is a fun and challenging, body sculpting, low impact workout using Pilates principles and High Intensity Interval Training (HIIT).   Work your ABS, GLUTES/BUTT, CORE, ARMS, LEGS, and CARDIO in a heated room.", date: Date.today, user: @gina, category: @category_workout)
@post_5 = Post.create!(title: 'Tardigrades', content: "Despite being nicknamed moss piglets, tardigrades do an awful lot more than just snuffle around in vegetation", date: Date.today, user: @sweta, category: @category_science)

# post tags
@post_1.tags << @tag_home
@post_2.tags << @tag_hairL
@post_2.tags << @tag_hairT
@post_3.tags << @tag_meal
@post_4.tags << @tag_ab
@post_4.tags << @tag_fitness
@post_4.tags << @tag_meal
@post_5.tags << @tag_chemicals

# comments
@comment_1 = Comment.create(date_c: Date.today, comment: 'Great work!', user: @brianna, post: @post_1)
@comment_2 = Comment.create(date_c: Date.today, comment: 'I need more hairstyles!!!!!', user: @sanaa, post: @post_2)
@comment_3 = Comment.create(date_c: Date.today, comment: 'Teach me how to make this sometime!', user: @sanaa, post: @post_3)
@comment_4 = Comment.create(date_c: Date.today, comment: 'Yummy!', user: @brianna, post: @post_3)
@comment_5 = Comment.create(date_c: Date.today, comment: 'Sounds exciting!', user: @hari, post: @post_4)
@comment_6 = Comment.create(date_c: Date.today, comment: 'Really insightful!', user: @sanaa, post: @post_5)