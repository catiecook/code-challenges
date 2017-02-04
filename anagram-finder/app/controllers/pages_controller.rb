class PagesController < ApplicationController

  def home
    puts "*** IN PAGES CONTROLLER ***"
    @greeting = "welcome to the page"
    # structure
    # anagrams[:key_aka_user_word, word_from_dictionary]
    # #to add another item to the hash key:
    # anagrams['key'].store 'word_from_dictionary'
    #
    # puts "file route" + Dir.pwd
    hash = {}
    File.open("app/assets/files/dictionary.txt", 'r') do |file| #open file
      file.readlines.each_with_index do |line, index|
        original = line.strip
        sorted = original.split('').sort.join
        puts original + " " + sorted if index < 100
        # key, value = ordered.chomp.split('\t')
        # hash[:key] = ordered
        # puts hash[:key]
      end
    end

  end

end
