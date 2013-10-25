ENV['RACK_ENV'] = 'test'
gem 'minitest'
require 'minitest/autorun'
require 'purdytest'
require 'rack/test'

require_relative "../app"

Purdytest.configure do |io|
  io.pass = :green
  io.fail = :red
end
