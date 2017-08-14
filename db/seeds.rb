# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts 'Loading Users...'
u1 = User.create email: 'politisj@gmail.com' , name: 'John Politis' ,  password: 'chicken', age: '43' ,is_admin:true, image: "George_Clooney_2016_lhxogq"
u2 = User.create email: 'matty@gmail.com' , name: 'Matt Edge' ,        password: 'chicken', age: '25', is_admin:false, image: "1_rtmbrk"
u3 = User.create email: 'textchimp@gmail.com' , name: 'Luke Ham' ,        password: 'chicken', age: '20', is_admin:false, image: "2_jbpazr"
u4 = User.create email: 'three@gmail.com' , name: 'user four' ,        password: 'chicken', age: '40', is_admin:false, image: "3_iwm3at"
u5 = User.create email: 'four@gmail.com' , name: 'user five' ,        password: 'chicken', age: '41', is_admin:false, image: "4_nizjmo"
u6 = User.create email: 'five@gmail.com' , name: 'user six' ,        password: 'chicken', age: '42', is_admin:false, image: "5_bmt9ml"
u7 = User.create email: 'six@gmail.com' , name: 'user seven' ,        password: 'chicken', age: '43', is_admin:false, image: "6_t3n7pz"
u8 = User.create email: 'seven@gmail.com' , name: 'user eight' ,        password: 'chicken', age: '44', is_admin:false, image: "7_syfrqa"
u9 = User.create email: 'nine@gmail.com' , name: 'user nine' ,        password: 'chicken', age: '45', is_admin:false, image: "8_zqfopg"
u10 = User.create email: 'ten@gmail.com' , name: 'user ten' ,        password: 'chicken', age: '46', is_admin:false, image: "9_xtve9j"

Post.destroy_all
puts 'Loading Posts....'
p1 = Post.create title: 'news post', content: 'testing post1', image: 'p1_jhqrcm'
p2 = Post.create title: 'study post', content: 'testing post2', image: 'p2_zpyxwn'
p3 = Post.create title: 'javascript post', content: 'testing post3', image: 'p3_sfkmde'
p4 = Post.create title: 'rubyonrails post', content: 'testing post4', image: '
p4_x6vtrg'
p5 = Post.create title: 'ruby post', content: 'testing post5', image: 'p5_vv4cqw'
p6 = Post.create title: 'rails post', content: 'testing post6', image: 'p6_nttuth'
p7 = Post.create title: 'Java post', content: 'testing post7', image: 'p7_krv16i'
p8 = Post.create title: 'C# post', content: 'testing post8', image: 'p8_kotvqp'
p9 = Post.create title: 'C++ post', content: 'testing post9', image: 'p9_kzzihi'
p10 = Post.create title: 'C lang post', content: 'testing post10', image: 'p10_titvrd'


Comment.destroy_all
puts 'Loading Comments....'
c1 = Comment.create title: 'Hard lang', content: 'testing comment1', image: "c1_i1rqf7"
c2 = Comment.create title: 'Low model', content: 'testing comment2', image: "c2_u4uq1f"
c3 = Comment.create title: 'Boommmmm', content: 'testing comment3', image: "c3_jkbfvs"
c4 = Comment.create title: 'Mooooooo', content: 'testing comment4', image: "c4_bmsuqx"
c5 = Comment.create title: 'Easy', content: 'testing comment4', image: "c5_ucaaxr"
c6 = Comment.create title: 'nice lang', content: 'testing comment4', image: "c6_wnatll"
c7 = Comment.create title: 'High level lang', content: 'testing comment4', image: "c7_v96wmk"
c8 = Comment.create title: 'IS It prog lang', content: 'testing comment4', image: "c8_w1wnef"
c9 = Comment.create title: 'not possible', content: 'testing comment4', image: "c9_jlz4yg"
c10 = Comment.create title: 'impossiblllllllllllllle do you belive that', content: 'testing comment4', image: "c20_m1tihq"



#posts
u1.posts << p1
u1.posts << p2
u1.posts << p3
u1.posts << p4
u1.posts << p5
u1.posts << p6
u1.posts << p7
u2.posts << p8
u2.posts << p9
u2.posts << p10



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
