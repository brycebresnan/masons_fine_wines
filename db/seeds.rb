Product.destroy_all

100.times do |index|
  Product.create!(name: Faker::Coffee.blend_name,
                  country_of_origin: Faker::Currency.code,
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