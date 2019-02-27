require 'date'

class Enigma
  def self.random_key
    (68403)
  ALPH = ("a".."z").to_a << " "

  def initialize(unencrypted_message)

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
