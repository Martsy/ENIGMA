require 'date'

class Enigma
  ALPH = ("a".."z").to_a << " "

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
