require "faker"

puts "Deleting products..."
Product.destroy_all

puts "Populating 676 products..."
676.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price: Faker::Commerce.price(range: 1.0..999.0),
    stock_quantity: Faker::Number.between(from: 0, to: 500)
  )
end

puts "Done. Products: #{Product.count}"
