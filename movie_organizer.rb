movies = {
  mouse_hunt: 5
}
#this is a hash that will represent all our movies; the title is on one side and the rating is on the other

puts "What do you want to do?"
choice = gets.chomp
#this line means that the user input is being taken in and saved as a choice to represent an action 
#someone is performing on our movie hash database

case choice #in the case of our choice variable
  when "add"#if they type add
    puts "Give me a movie title to add"
    title = gets.chomp.to_sym #converts the title they type in to a symbol to be a key
    puts "Give me a rating (1-5)"
    rating = gets.chomp.to_i #converts the rating number they give to be an integer
    movies[title] = rating #saves the rating integer to be the value for the title given earlier
    #print movies
    #give the movies hash a key of title and a value of rating
    #movies["rating"] = rating
    if movies[title.to_sym].nil? #if the movie title is non existent or nil, then it will be added
      movies[title] = rating
      puts "It was added"
    else #otherwise it already exists and will show the database
    puts "movie already exists"
        print movies
    end
  when "update"#updates a movie title and rating
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
  when "display"#displaying from the movies hash to the console
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete" #deletes movies by using the delete method as long as the movie title does not return nil
    #if it returns nil then it will show an error
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