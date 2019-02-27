require 'date'

class Enigma

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def self.random_key
    Array.new(5) {random_number}.join
  end

  def self.random_number
    [0..9].sample
  end

  def characters
    ("a".."z").to_a << " "
  end

  def self.encryption(message)
    message.chars.each_slice(4).map(&:join)
  end

  def self.date_offsets(date)
    (date.to_i ** 2). to_s.chars.last(4).map(&:to_i)
  end

  def self.key_rotations(key)
    key.chars.each_cons(2).map(&:join).map(&:to_i)
  end

  def encrypt(message, key, date)
    {
      encryption: message,
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date)
    {
      decryption: message,
      key: key,
      date: date
    }
  end
end
