require_relative 'spec_helper'
describe Loripsum::OptionsParser do
  describe '.parse!' do
    it 'checks for valid length arguments' do
      ARGV = []
      ARGV << '-l'
      ARGV << 'invalid'
      expect{Loripsum::OptionsParser.parse!}.to raise_error(RuntimeError)
    end
  end
end