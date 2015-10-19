require_relative 'spec_helper'
describe Loripsum::Client do
  describe '.generate' do
    it 'gets lorem ipsum with a specified number of paragraphs' do
      ARGV = %w(-n 4)
      html_doc = Nokogiri::HTML(Loripsum::Client.generate)
      expect(html_doc.css('p').size).to eql 4
    end
    it 'gets lorem ipsum with a specified number of words' do
      ARGV = %w(-n 1 -l short)
      html_doc = Nokogiri::HTML(Loripsum::Client.generate)
      expect(html_doc.css('p').text.split(" ").size).to be < 50
    end
    it 'gets lorem ipsum as plain text' do
      ARGV = %w(-t)
      expect(Loripsum::Client.generate).to_not include('<p>')
    end
    it 'gets lorem ipsum with code samples' do
      ARGV = %w(-c)
      html_doc = Nokogiri::HTML(Loripsum::Client.generate)
      expect(html_doc.css('pre').size).to be > 0
    end
    it 'gets lorem ipsum with an ul' do
      ARGV = %w(-u)
      html_doc = Nokogiri::HTML(Loripsum::Client.generate)
      expect(html_doc.css('ul > li').size).to be > 0
    end
    it 'gets lorem ipsum with an ol' do
      ARGV = %w(-o)
      html_doc = Nokogiri::HTML(Loripsum::Client.generate)
      expect(html_doc.css('ol > li').size).to be > 0
    end
    it 'gets lorem ipsum with a description list' do
      ARGV = %w(-d)
      html_doc = Nokogiri::HTML(Loripsum::Client.generate)
      expect(html_doc.css('dl > dd').size).to be > 0
    end
    it 'gets lorem ipsum with a block quote' do
      ARGV = %w(-b)
      html_doc = Nokogiri::HTML(Loripsum::Client.generate)
      expect(html_doc.css('blockquote').size).to be > 0
    end
    it 'gets lorem ipsum as a hash that includes a header and a body' do
      ARGV = %w(-h)
      output = Loripsum::Client.generate
      expect(output[:header]).to_not be_empty
      expect(output[:body]).to_not be_empty
    end
  end
end