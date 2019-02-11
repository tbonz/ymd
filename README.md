# YMD

Helper method to output the year month day in a common format.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ymd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ymd

## Usage

Usage examples:

```ruby
# default usage
YMD.ymd
# => "20191231"

# output date with '_' separator
YMD.ymd('_')
# => "2019_12_31"

# output date with '-' separator
YMD.ymd('-')
# => "2019-12-31"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tbonz/ymd. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ymd project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tbonz/ymd/blob/master/CODE_OF_CONDUCT.md).
