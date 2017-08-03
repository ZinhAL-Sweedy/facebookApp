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
u2 = User.create email: 'matty@gmail.com' , name: 'Matt Edge' ,        password: 'chicken', age: '25', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRql4lywkxnwfbKxuqLmjlOioB1H1mjc15gWO_hJvGgOn-KlSPLCQ"
u3 = User.create email: 'textchimp@gmail.com' , name: 'Luke Ham' ,        password: 'chicken', age: '20', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX8iWzZ5ZnY1q95Ye5DPm3OcfSJY2HH1CT-n4iaA24VEuQ07Ks"
u4 = User.create email: 'three@gmail.com' , name: 'user four' ,        password: 'chicken', age: '40', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBN0PpLFfgTbzrUYVfXbw_wXJLCJkJ_umGl7w25owrxq5agamYjg"
u5 = User.create email: 'four@gmail.com' , name: 'user five' ,        password: 'chicken', age: '41', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8UV-cqAFQKte5qj-pUVwmTVJCOjw86lgB9CUcWpZaubJ706iFhg"
u6 = User.create email: 'five@gmail.com' , name: 'user six' ,        password: 'chicken', age: '42', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS78OtIaaSw6c5xQQuq9Mf4O42jxRN0HkIjAoi8Bk9B67lh1yx8"
u7 = User.create email: 'six@gmail.com' , name: 'user seven' ,        password: 'chicken', age: '43', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpR9Yf2b3W_BXLulLICgCGmsV5-xpW-76R9PM072nlo43BTa47"
u8 = User.create email: 'seven@gmail.com' , name: 'user eight' ,        password: 'chicken', age: '44', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDZV5vgYFncFw13meezKx0LToUStZN_aomSd8_la_8HyreeRYg"
u9 = User.create email: 'nine@gmail.com' , name: 'user nine' ,        password: 'chicken', age: '45', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXZi2HHIU83jGWYQ-TI4Zr7UJ9vKf0oZbE-0iKv9lI7zo-TYL2"
u10 = User.create email: 'ten@gmail.com' , name: 'user ten' ,        password: 'chicken', age: '46', is_admin:false, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1agnkc4Z9jEX6gxDrrn_8oGncbkx_P3PBmVgbGnhhGAbs1LAh"

Post.destroy_all
puts 'Loading Posts....'
p1 = Post.create title: 'fisrt post', content: 'testing post1', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWW9jMVoeIGup1PWzzulVtL2qd1owL3qAHXD3ivGNpZrEhnuY5'
p2 = Post.create title: 'second post', content: 'testing post2', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv5v1gHN4gFdI8xuBxD-vgZqdrP7UCxCTjzqWscSxDD84rGJjZ'
p3 = Post.create title: 'third post', content: 'testing post3', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg9fa_LooifRJjGluD9qezfR8hjauudWFhpuvMs5c2YlcIy_jxGw'
p4 = Post.create title: 'fourth post', content: 'testing post4', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMyFn3mFH7a78kNbL0Xe2sQ9zGNY7XswfLPTo5WF4qqrGIv3M9'
p5 = Post.create title: 'fifith post', content: 'testing post5', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrhUhQexckuWVsmPdHgt5JLlBlR8qY8gL4KFvcnd_zP8SOgISWtQ'
p6 = Post.create title: 'sixth post', content: 'testing post6', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzCXWGMoj4NarDMAYxBe0AjsCvDIMiGCJzUQWl2GsQ1LawZ9IX'
p7 = Post.create title: 'seventh post', content: 'testing post7', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn72Kvs67UBCJk6ttlxOqc3dYceEvhX21NUkZA6Lffwgy8zezR'
p8 = Post.create title: 'eightth post', content: 'testing post8', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5L2qyx4VW0kUkh1_oakYFXIkiFnlxi8p7edtEMRJSOhW9x4KKsA'
p9 = Post.create title: 'nineth post', content: 'testing post9', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL53WupfV0dkh2aG2SzVRWVPap_NjZ_j43pK7LiWszsdUtkLxKIQ'
p10 = Post.create title: 'tenth post', content: 'testing post10', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKNwrg2us-ZxeEmg-FoYOYwWHrumno2946ZokRh1nPM95yvHHfMw'


Comment.destroy_all
puts 'Loading Comments....'
c1 = Comment.create title: 'fisrt comment', content: 'testing comment1', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW4FtN10U4bMz2J27L0Cn8cQNkJ1YbAioZAIGSSrlhch2f-p9L"
c2 = Comment.create title: 'second comment', content: 'testing comment2', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSGkpDkiQlA4gjFXKnN_DJDPCiizVzdV8xM5Yio6SZF0aPZ-Imjw"
c3 = Comment.create title: 'third comment', content: 'testing comment3', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvyKife5MfGupnHT4aCIlRFotbmYMCcZ5euJPPcWf2kAhJD75P"
c4 = Comment.create title: 'fourth comment', content: 'testing comment4', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs89FH1-Q3EDsA6o6cR7-5I73dk_POWNA7Kp6Us2hyiI3NdLYeBA"
c5 = Comment.create title: 'fifith comment', content: 'testing comment4', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAJrTYHAlcS3nWzxgskY3ab_zb3Fhc_qvrLaFMdeRcApxO7Jf3Ig"
c6 = Comment.create title: 'sixth comment', content: 'testing comment4', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyiryYpM4Jtn0VMP0aXC7Z6gPeWO401rgNBI8PGNBfOFV41XLd"
c7 = Comment.create title: 'seventh comment', content: 'testing comment4', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMaZKH07HwwS0_5q0HPTk5aHfOxf7naWBLZRf2O3_dvXQPYL5GiQ"
c8 = Comment.create title: 'eightth comment', content: 'testing comment4', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbLCMhDoOLUf9wo6zF4uYJF_ra4Qx6paVCrUEXJeZY6cDhpqid"
c9 = Comment.create title: 'nineth comment', content: 'testing comment4', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSleA3s_Sqw7vhXKJT54p6G7GDMbU_eAUJq34qE5_PRsRy1hVkCwQ"
c10 = Comment.create title: 'tenth comment', content: 'testing comment4', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvFGpGAnb68ezOZqRQ77jgoIHSzCPL4u5_9Dc5RONtAKwOIKxO"



#posts
u1.posts << p1
u1.posts << p2
u1.posts << p3
u1.posts << p4
u1.posts << p5
u1.posts << p6
u1.posts << p7
u1.posts << p8
u1.posts << p9
u1.posts << p10




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
