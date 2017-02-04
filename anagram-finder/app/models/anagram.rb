class Anagram < ApplicationRecord
  anagrams = Hash.new()

  # structure
  anagrams[:key_aka_user_word, word_from_dictionary]

  #to add another item to the hash key:
  anagrams['key'].store 'word_from_dictionary'



  def load_file
    File.open("sample.txt", 'r') do |file| #open file
      file.readlines.each_with_index do |line, index|
        puts line if index < 100
      # read words in, set a key to be the alphebetically sorted user input word, then search dictionary values accordingly.
  end
end