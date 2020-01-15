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

@category_lifestyle = Category.create({category_name: 'Lifestyle'})

@tag_meal = Tag.create({tag_name: 'Meal'})

@sanaa = User.create({first_name: 'Sanaa', last_name: 'Syed', email: 'sanaa.syed@shopify.com'})

@post_1 = Post.create!(title: '2019 in a year review', content: "It's halfway through 2019, and to say it has been amazing would be an understatement. These past 12 months have been like nothing that I had been ready for.", date: Date.today, user: @sanaa, category: @category_lifestyle)

@post_1.tags << @tag_meal

@comment_1 = Comment.create({date_c: Date.today, comment: 'Great work!', user: @sanaa})

