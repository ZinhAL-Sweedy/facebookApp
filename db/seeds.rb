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
u2 = User.create email: 'matty@gmail.com' , name: 'Matt Edge' ,        password: 'chicken', age: '25', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u3 = User.create email: 'textchimp@gmail.com' , name: 'Luke Hammer' ,        password: 'chicken', age: '20', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u4 = User.create email: 'three@gmail.com' , name: 'user four' ,        password: 'chicken', age: '40', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u5 = User.create email: 'four@gmail.com' , name: 'user five' ,        password: 'chicken', age: '41', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u6 = User.create email: 'five@gmail.com' , name: 'user six' ,        password: 'chicken', age: '42', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u7 = User.create email: 'six@gmail.com' , name: 'user seven' ,        password: 'chicken', age: '43', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u8 = User.create email: 'seven@gmail.com' , name: 'user eight' ,        password: 'chicken', age: '44', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u9 = User.create email: 'nine@gmail.com' , name: 'user nine' ,        password: 'chicken', age: '45', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"
u10 = User.create email: 'ten@gmail.com' , name: 'user ten' ,        password: 'chicken', age: '46', is_admin:false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg"

Post.destroy_all
puts 'Loading Posts....'
p1 = Post.create title: 'fisrt post', content: 'testing post1', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p2 = Post.create title: 'second post', content: 'testing post2', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p3 = Post.create title: 'third post', content: 'testing post3', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p4 = Post.create title: 'fourth post', content: 'testing post4', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p5 = Post.create title: 'fifith post', content: 'testing post5', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p6 = Post.create title: 'sixth post', content: 'testing post6', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p7 = Post.create title: 'seventh post', content: 'testing post7', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p8 = Post.create title: 'eightth post', content: 'testing post8', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p9 = Post.create title: 'nineth post', content: 'testing post9', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'
p10 = Post.create title: 'tenth post', content: 'testing post10', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/George_Clooney_2016.jpg/220px-George_Clooney_2016.jpg'


Comment.destroy_all
puts 'Loading Comments....'
c1 = Comment.create title: 'fisrt comment', content: 'testing comment1'
c2 = Comment.create title: 'second comment', content: 'testing comment2'
c3 = Comment.create title: 'third comment', content: 'testing comment3'
c4 = Comment.create title: 'fourth comment', content: 'testing comment4'
c5 = Comment.create title: 'fifith comment', content: 'testing comment4'
c6 = Comment.create title: 'sixth comment', content: 'testing comment4'
c7 = Comment.create title: 'seventh comment', content: 'testing comment4'
c8 = Comment.create title: 'eightth comment', content: 'testing comment4'
c9 = Comment.create title: 'nineth comment', content: 'testing comment4'
c10 = Comment.create title: 'tenth comment', content: 'testing comment4'



#posts
u1.posts << p1
u2.posts << p2
u3.posts << p3
u4.posts << p4
u5.posts << p5
u6.posts << p6
u7.posts << p7
u8.posts << p8
u9.posts << p9
u10.posts << p10




#comments
p1.comments << c1
p2.comments << c2
p3.comments << c3
p4.comments << c4
p5.comments << c5
p6.comments << c6
p7.comments << c7
p8.comments << c8
p9.comments << c9
p10.comments << c10


u1.follow!(c1)
u1.follow!(c2)
u1.follow!(c3)
u1.follow!(c4)
u1.follow!(c5)
u1.follow!(c6)
u1.follow!(c7)
u1.follow!(c8)
u1.follow!(c9)
u1.follow!(c10)


#follow
u1.follow!(p1)
u1.follow!(p2)
u1.follow!(p3)
u1.follow!(p4)
u1.follow!(p5)
u1.follow!(p6)
u1.follow!(p7)
u1.follow!(p8)
u1.follow!(p9)
u1.follow!(p10)

u1.follow!(u2)
u1.follow!(u3)
u1.follow!(u4)
u1.follow!(u5)
u1.follow!(u6)
u1.follow!(u7)
u1.follow!(u8)
u1.follow!(u9)
u1.follow!(u10)





u2.follow!(c3)
u2.follow!(c4)
u2.follow!(p1)




#like
u1.like!(c1)
u1.like!(c2)
u1.like!(c3)
u1.like!(c4)
u1.like!(c5)
u1.like!(p1)
u1.like!(c2)
u1.like!(c3)
u1.like!(c4)
u1.like!(c5)
u1.like!(c6)
u1.like!(p2)
u2.like!(p2)
u2.like!(c2)
u3.like!(p3)
u3.like!(c3)
u4.like!(p4)
u4.like!(c4)
u5.like!(p5)
u5.like!(c5)
u6.like!(p6)
u6.like!(c6)
u7.like!(p7)
u7.like!(c7)
u8.like!(p8)
u8.like!(c8)
u9.like!(c9)
u9.like!(p9)
u10.like!(c9)
u10.like!(p8)
u10.like!(p10)
u10.unlike!(p1)
u10.unlike!(p2)
u10.unlike!(p3)
u10.unlike!(p4)
u10.unlike!(p5)
u8.unlike!(c1)
u8.unlike!(c2)
u8.unlike!(c3)
u8.unlike!(c4)
u8.unlike!(c5)
u8.unlike!(c6)
u8.unlike!(c7)
u8.unlike!(c10)
u8.unlike!(c9)
u8.unlike!(p1)
u8.unlike!(p2)
u8.unlike!(p3)
u8.unlike!(p4)
u8.unlike!(p5)
u8.unlike!(p6)
u8.unlike!(p7)
u8.unlike!(p8)
u8.unlike!(p9)
u8.unlike!(p10)


#
# p.followed_by?(u1) # return true or false
