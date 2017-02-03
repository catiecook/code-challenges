# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dictionaries.destroy_all

=begin

Tying to set up a reader for each word in the database document that will parse the word given by user, and then search the dictionary for matches.

methods will be to run that keyWord into an Anagram method that first checks for word length, then preforms the same slipt and sort on all length matching words, then will preform a match check. If matches, the word will be put back in order and placed into a 'match' array.

=end


IO.foreach('../lib/assets/dictionary.txt') do |l|
  baseWord = l.strip #remove whitespace
  keyWord = word.split('').sort.join # alphebetically sort letters
  anagram = Anagram_Method_Goes_Here(keyWord)

end

=begin

IO.foreach('./specs/dictionary.txt') do |line|
  word = line.strip
  key = word.split('').sort.join
  anagram = Anagram.find_or_create_by(key: key)
  # if the word is already in the array, don't add it again
  if !anagram.words.include?(word)
      anagram.words.push(word)
  end
  anagram.save

=end
