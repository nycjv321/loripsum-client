# Loripsum::client

Ruby client for <loripsum.net>

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'loripsum-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install loripsum-client

## Usage

    Usage: loripsum.rb [options]
        -n, --number [NUMBER]            The number of paragraphs to generate
        -l, --length [LENGTH]            The average length of a paragraph
        -p, --decorate                   Add bold, italic, and marked text
        -a, --links                      Add links
        -u, --unordered-lists            Add unordered lists
        -o, --ordered-lists              Add ordered lists
        -d, --description-lists          Add description lists
        -b, --block-quotes               Add blockquotes
        -c, --code-samples               Add code samples
        -h, --headers                    Add headers
        -C, --all-caps                   Use ALL CAPS
        -s, --prude                      Prude version
        -t, --text                       Return plain text, no HTML


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nycjv321/loripsum-client.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

