# Uber::Estimates

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/uber/estimates`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'uber-estimates'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uber-estimates

## Usage

### Gem configuration
```ruby
Uber::Estimates.configure do |config|
  config.server_token = "your server token"
end
```
## Contributing

1. Fork it ( https://github.com/[my-github-username]/uber-estimates/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
