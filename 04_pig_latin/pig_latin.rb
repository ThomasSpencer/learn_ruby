require 'pry'


def translate(string)
  vowels = ['a', 'e', 'i', 'o']

  new_string = []
  string.split(" ").each do |word|
    if vowels.include?(word[0])
      new_string << "#{word}ay"
    elsif vowels.include?(word[1])
      starting_letter = word[0]
      word[0] = ''
      new_word = "#{word}" + "#{starting_letter}" + "ay"
      new_string << new_word
    elsif vowels.include?(word[2])
      starting_letters = word[0..1]
      word[0..1] = ''
      new_word = "#{word}" + "#{starting_letters}" + "ay"
      new_string << new_word
    elsif vowels.include?(word[3])
      starting_letters = word[0..2]
      word[0..2] = ''
      new_word = "#{word}" + "#{starting_letters}" + "ay"
      new_string << new_word

    end
  end
  new_string.join(' ')
end
