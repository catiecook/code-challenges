require 'json'

class PagesController < AnagramController

  def home
    puts get_word
    puts "*** IN PAGES CONTROLLER ***"
    @greeting = "Anagram Finder"
    get_word

  end

  def get_word
    base_word = params['base_word']
    puts "BASE WORD *******" + base_word
    arrange_word(base_word)
  end

  def new_anagram(base_word, sorted_base_word)

    anagrams = Array.new

    File.open("app/assets/files/dictionary.txt", 'r') do |file|
      file.readlines.each_with_index do |line, index|
        original = line.strip
        if original.length == base_word.length

          sorted = original.downcase.split('').sort.join

          if sorted_base_word == sorted
            anagrams.push(original)
            puts anagrams
          end

        end

        # puts original + " " + sorted if index < 100
        # anagrams = { original: original, sorted: sorted}
        # puts anagrams

      end
    end
  end

  def arrange_word(base_word)

    base_word = base_word.strip
    sorted_base_word = base_word.downcase.split('').sort.join
    puts "ORIGINAL: " + base_word + " SORTED: " + sorted_base_word

    new_anagram(base_word, sorted_base_word)
  end
end
