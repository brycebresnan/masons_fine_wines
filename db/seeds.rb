Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Coffee.blend_name,
                  country_of_origin: Faker::Currency.code,
                  cost: Faker::Number.decimal(l_digits: 2))
end

5.times do |index|
  Product.create!(name: Faker::Coffee.blend_name,
                  country_of_origin: "USA",
                  cost: Faker::Number.decimal(l_digits: 2))
end

Review.destroy_all
10.times do |index|
  Review.create!(author:Faker::TvShows::StarTrek.character,
                content_body:Faker::Lorem.sentence(word_count: 20).chop,
                rating:Faker::Number.within(range: 1..5),
                product_id:Product.all.first.id)
  end

p "Created #{Product.count} wines"

User.destroy_all
User.create!(email:"user@user.com" , user_name:"UserUser", password:"1234" , password_confirmation:"1234")
User.create!(email:"admin@admin.com" , user_name:"AdminAdmin", password:"1234" , password_confirmation:"1234", admin: "true")
