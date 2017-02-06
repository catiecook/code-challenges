require 'json'

class PagesController < AnagramController

  def index
    @greeting = "Anagram Finder"
    if params['base_word']
      puts get_word
      puts "*** IN PAGES CONTROLLER ***"
    end
  end

  def search
    puts "in search route"
    get_word
    render json: @anagrams
  end

  def get_word
    base_word = params['base_word']
    arrange_word(base_word)
  end

  def arrange_word(base_word)
    # remove white spage
    base_word = base_word.strip
    # sort letters alphebetically
    sorted_base_word = base_word.downcase.split('').sort.join
    # call anagram function
    new_anagram(base_word, sorted_base_word)
  end

  def new_anagram(base_word, sorted_base_word)

    hash = Hash.new
    anagrams = Array.new

    File.open("app/assets/files/dictionary.txt", 'r') do |file|
      file.readlines.each_with_index do |line, index|
        original = line.strip
        if original.length == base_word.length

          sorted = original.downcase.split('').sort.join

          if sorted_base_word == sorted
            anagrams.push(original)
          end
        end
        hash[base_word] = anagrams
        @anagrams = hash[base_word]

      end
    end
  end
end
