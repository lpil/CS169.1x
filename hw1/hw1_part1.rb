#!/usr/bin/env ruby
# encoding: utf-8

#
module FunWithStrings
  def palindrome?
    word = gsub(/\W/, '').downcase
    word == word.reverse
  end

  def words
    gsub(/\'/, '')
    .split(/\b/)
    .reject { |x| x =~ /^\W+$/ }
  end

  def count_words
    histogram = Hash.new(0)
    words.each do |word|
      # unless word =~ /^\W+$/
      histogram[word.downcase] += 1
      # end
    end
    histogram
  end

  def anagram_groups
    words.group_by do |word|
      word.downcase.chars.sort
    end
    .values
  end
end

#
class String
  include FunWithStrings
end
