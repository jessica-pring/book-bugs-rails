require 'json'
require 'open-uri'

url = 'https://raw.githubusercontent.com/benoitvallon/100-best-books/master/books.json'

# author, country, imageLink, language, link, pages, title, year
book_serialized = open(url).read
books = JSON.parse(book_serialized)

###############################

puts "Deleting all recommendations..."
Recommendation.delete_all

puts "Creating main recommendation list..."
main_list = Recommendation.create!(name: "Full book index", user_id: User.first[:id])

puts "Main recommendation list created!"

###############################

puts "Deleting all books..."
Book.delete_all

puts "Creating books..."

books.each do |book|
  Book.create!(title: book["title"],
              author: book["author"],
              image_link: book["imageLink"],
              recommendation_id: Recommendation.first[:id])
end

puts "Books created!"
