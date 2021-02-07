movies = {
  mouse_hunt: 5
}

puts "What do you want to do?"
choice = gets.chomp

case choice
  when "add"
    puts "Give me a movie title to add"
    title = gets.chomp.to_sym
    puts "Give me a rating (1-5)"
    rating = gets.chomp.to_i
    movies[title] = rating
    #print movies
    #give the movies hash a key of title and a value of rating
    #movies["rating"] = rating
    if movies[title.to_sym].nil?
      movies[title] = rating
      puts "It was added"
    else
    puts "movie already exists"
        print movies
    end
  when "update"
    puts "Give me a title"
    title = gets.chomp
    if movies[title.to_sym].nil?
    #if the movie title is nothing then tell them it doesn't exist
      puts "It doesn't exist"
    else
      puts "Give me a new rating"
      #asking for new rating
      rating = gets.chomp
      #rating is what's being taken in
      movies[title.to_sym] = rating.to_i
      #now the value is set to the new rating
      print movies
    end
  when "display"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "What movie do you want to delete?"
    title = gets.chomp
      if movies[title.to_sym].nil?
        puts "It is not here"
       
      else
        puts "Okay deleting it"
        movies.delete(title.to_sym)
         print movies
      end
  else
    puts "Error!"
end