class Anagram < ApplicationRecord
  def find_word
    serialize :word, Array 
  end
end
