# frozen_string_literal: true

def first_phoneme_index(word)
  single_phonemes = ['qu']
  result = word.index(/[aeiou]/)
  return result if result.nil? || result == 0

  result = word.index(/[aeiou]/, result + 1) until result.nil? || !single_phonemes.include?(word[result - 1..result])

  result
end

def translate_word(word)
  return '' if word.empty?

  first_phoneme = first_phoneme_index(word)
  return word + 'ay' if first_phoneme == 0

  word[first_phoneme..-1] + word[0..first_phoneme - 1] + 'ay'
end

def translate(word)
  words = word.split
  words = words.map { |w| translate_word(w) }
  words.join(' ')
end
