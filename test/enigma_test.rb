require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
    @enigma.encrypt("hello world", "02715", "040895")
    @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_enigma_class_exists
    assert_instance_of Enigma, @enigma
  end

  def test_the_key_is_five_numbers
    random_key = Enigma.random_key
    assert_equal 5, random_key.length
  end

  # def test_each_key_is_random
  #   keys = 1000.times.map { Enigma.random_key }
  #   assert_equal
  # end

  def test_number_is_0_to_9
    number_shown = 1000.times.map { Enigma.random_key }.join
    all_numbers = number_shown.uniq.sort.join
    assert_equal "0123456789", all_numbers
  end

  def test_encrypt_message_is_printed
    assert_equal "hello world", @enigma.message
  end

end
