require 'date'

class Enigma
  ALPH = ("a".."z").to_a << " "

  def initialize(unencrypted_message)
    @unencrypted_message = unencrypted_message
    @key = key
    @date = date
  end

  def self.random_key
    Array.new(5) {random_number}.join
    (82648)
  end

  def self.random_number
    [0..9].sample
  end

  attr_reader :message

  def encrypt(message, key = random, date = today)
    {
      encryption: message,
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date = today)
    {
      decryption: message,
      key: key,
      date: date
    }
  end

end
