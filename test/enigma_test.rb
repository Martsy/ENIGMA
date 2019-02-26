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

  def test_encrypt_message_is_printed
    assert_equal "hello world", @enigma.message
  end
end
