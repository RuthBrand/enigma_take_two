require 'date'
require "./lib/key"
require 'pry'

class Enigma

  attr_reader :key,
              :date,
              :message

  def initialize
    # @key = Key.new
  end

  def encrypt(message, key = Key.new.random_key, date = Date.today.strftime("%d%m%y"))
    @date = date
    @message = message
    @key = key
  end
  
  def slice_it
    require "pry"; binding.pry
    @message.each_slice(4) do |rotation_group|
      p rotation_group
    end
    # ["h", "e", "l", "l"], ["o"]
  end
  
end


# I think offset and key should be in the same test. Even though their doing their own thing now, eventually they have to work together. like adding offset and key.

# when we slice_it..."h" = message[0]. We want to some how match-up "a" rotation to index [0] too. (YEAH BUT HOW GET IT TO DO THIS...I know)
