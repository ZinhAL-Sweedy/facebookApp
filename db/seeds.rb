# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts 'Loading Users...'
u1 = User.create email: 'politisj@gmail.com' , name: 'John Politis' ,  password: 'chicken', age: '43' ,is_admin:true, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u2 = User.create email: 'matty@gmail.com' , name: 'Matt Edge' ,        password: 'chicken', age: '25', is_admin:false
u3 = User.create email: 'textchimp@gmail.com' , name: 'Luke Hammer' ,        password: 'chicken', age: '20', is_admin:false
u4 = User.create email: 'cry@gmail.com' , name: 'Luke Hammer' ,        password: 'chicken', age: '40', is_admin:false

Post.destroy_all
puts 'Loading Posts....'
p1 = Post.create title: 'fisrt post', content: 'testing post1', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'

p2 = Post.create title: 'second post', content: 'testing post2', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p3 = Post.create title: 'third post', content: 'testing post3', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p4 = Post.create title: 'fourth post', content: 'testing post4', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'


Comment.destroy_all
puts 'Loading Comments....'
c1 = Comment.create title: 'fisrt comment', content: 'testing comment1'

c2 = Comment.create title: 'second comment', content: 'testing comment2'
c3 = Comment.create title: 'third comment', content: 'testing comment3'
c4 = Comment.create title: 'fourth comment', content: 'testing comment4'


u1.posts << p1
p1.comments << c1
u2.posts << p2
p2.comments << c2
 #
# u1.follow!(p1)
#
u1.follow!(c1)
u1.follow!(p1)
u1.follow!(u2)  #not quite working as intended
u1.follow!(p2)
u1.follow!(c2)
u1.follow!(c3)
u1.follow!(c3)
u2.follow!(c3)
u2.follow!(c4)
u2.follow!(p1)
u2.follow!(p2)
u2.follow!(u1)


u1.like!(u2)
u2.like!(u1)

u1.like!(p1)
u1.like!(c1)
u2.like!(p2)
u3.like!(p3)
u4.like!(p4)


#
# p.followed_by?(u1) # return true or false
