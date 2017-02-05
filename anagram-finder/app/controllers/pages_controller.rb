require 'json'

class PagesController < ApplicationController

  def home
    puts "*** IN PAGES CONTROLLER ***"
    @greeting = "Anagram Finder"
    
    anagrams = Hash.new

    File.open("app/assets/files/dictionary.txt", 'r') do |file| #open file
      file.readlines.each_with_index do |line, index|
        original = line.strip
        sorted = original.downcase.split('').sort.join
        puts original + " " + sorted if index < 100

        # anagrams.update{ "original" => original, "sorted" => sorted }
        # puts anagrams

      end
    end
  end

  def get_word
    base_word = params['base_word']
    puts base_word
  end

end
