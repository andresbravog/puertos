require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../lib")

require 'pry'
require 'puertos'