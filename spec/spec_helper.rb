require 'simplecov'
require 'codeclimate-test-reporter'
SimpleCov.start
CodeClimate::TestReporter.start


require_relative '../lib/loripsum'
require 'rspec'
require 'nokogiri'