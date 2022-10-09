require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require 'minitest/autorun'

require_relative 'hello'

class TestHello < MiniTest::Test
  def setup
    @object = Hello.new
  end

  def test_that_hello_return_a_string
    assert_instance_of String, @object.say('test')
  end

  def test_that_hello_return_correct_phrase
    assert_equal 'Hello world!', @object.say('world')
  end

end