# frozen_string_literal: true

class Book
  attr_reader :title

  def title=(word)
    return '' if word.empty?
    words = word.split
    words[0] = words[0].capitalize
    words = words.map { |w| smart_caps(w) }
    @title = words.join(' ')
  end

  def smart_caps(word)
    exceptions = ['and', 'or', 'in', 'the', 'of', 'a', 'an']
    exceptions.include?(word) ? word : word.capitalize
  end
end
