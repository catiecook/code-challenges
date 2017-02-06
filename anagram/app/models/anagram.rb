class Anagram < ApplicationRecord
  def load_file
    File.open("sample.txt", 'r') do |file| #open file
      file.readlines.each_with_index do |line, index|
        puts line if index < 100
      # read words in, set a key to be the alphebetically sorted user input word, then search dictionary values accordingly.
  end
end
