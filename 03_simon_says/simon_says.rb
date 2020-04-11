# frozen_string_literal: true

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  return '' if times.zero?

  result = word
  (times - 1).times do
    result = "#{result} #{word}"
  end

  result
end

def start_of_word(word, num_letters)
  word[0..(num_letters - 1)]
end

def first_word(sentence)
  sentence.split[0]
end

def titleize(phrase)
  small_words = ['and', 'a', 'the', 'over']
  words = phrase.split
  words[0] = words[0].capitalize
  words[1..-1] = words[1..-1].map do |word|
    small_words.include?(word) ? word : word.capitalize
  end

  words.join(' ')
end
