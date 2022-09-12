puts "Seeding..."

<<<<<<< HEAD

=======
>>>>>>> a459de2460675454a371b7a2cb384b46c7dca379
User.create(:email => "flatiron@gmail.com", :password => "123456", :password_confirmation => "123456")
Post.create(:subject => 'Ruby', :body => "Wow this is crazy!", :image_url => "https://media.istockphoto.com/photos/colorful-panoramic-mountain-view-at-sunrise-picture-id1129473522?k=20&m=1129473522&s=612x612&w=0&h=hkdf6tP6u_qETGVjHZXZ_6GLydngH88D2KesGtzJZJU=", :user_id => 1)
Post.create(:subject => 'Rails', :body => "Super Cool!", :image_url => "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", :user_id => 1)
Post.create(:subject => 'React', :body => "I love it!", :image_url => "https://media.istockphoto.com/photos/maroon-bells-autumn-aspen-treeslake-reflectionsaspen-colorado-picture-id478656454?k=20&m=478656454&s=612x612&w=0&h=82vTv92P5yN0ROHFDvp3ppL2S4GsDzhrVc5ik6dbe90=", :user_id => 1)

puts "Success"