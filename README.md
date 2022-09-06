# fast_year

![Gem](https://img.shields.io/gem/v/fast_year.svg) ![Gem](https://img.shields.io/gem/dt/fast_year.svg) ![License](https://img.shields.io/badge/license-MIT-blue.svg)

[fast_year](https://rubygems.org/gems/fast_year) is a Ruby's simple C extension which provides a faster implementation of getting the current year.

The function call is almost **2x faster** compared to ordinary `Time.now.year()`.


## Usage

`FastYear.year()` returns the current local 4 digit year.

```ruby
irb> require 'fast_year'
irb> FastYear.year    # -> 2022
```

And is intended for placing as HTML footer signature like:

```erb
<p>&copy; <%= FastYear.year %> - Acme Inc.</p>
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fast_year'
```

And then execute:

```
$ bundle install
```

Benchmark
---------

```
Comparison:
           fast_year:  5976662.0 i/s
           time_year:  2818645.4 i/s - 2.12x  (± 0.00) slower
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ryochin/fast_year. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/ryochin/fast_year/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the fast_year project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ryochin/fast_year/blob/master/CODE_OF_CONDUCT.md).

License
-------

MIT License.
