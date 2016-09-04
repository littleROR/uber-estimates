# Uber::Estimates

Uber Estimates is a small gem that wraps estimate endpoints from Uber API. Using this gem you will be able to get estimates about Uber rides nice and smooth. 

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

### Getting price estimates
To get price estimates you need to provide start and end points coordinates, as below. More details at [Uber Docs](https://developer.uber.com/docs/rides/api/v1-estimates-price)
```ruby
Uber::Estimates.get_estimations(:price,
  {start_latitude: 44.427587, start_longitude: 26.0987345, 
    end_latitude: 44.4599565, end_longitude: 26.0984328 
  }
)
```
#### Response:
```ruby
#<Uber::Estimates::Response:0x0000000345cce0
 @code=200,
 @data=
  [#<Uber::Estimates::ResponseTypes::Price:0x0000000345b9f8
    @currency_code="RON",
    @display_name="uberX",
    @distance=3.24,
    @duration=840,
    @estimate="RON20-27",
    @high_estimate=27,
    @localized_display_name="uberX",
    @low_estimate=20,
    @product_id="1ca8d691-9f67-4bfb-9c57-cb727b52b7b7",
    @surge_multiplier=2>,
   #<Uber::Estimates::ResponseTypes::Price:0x0000000345b9d0
    @currency_code="RON",
    @display_name="uberSELECT",
    @distance=3.24,
    @duration=840,
    @estimate="RON19-26",
    @high_estimate=26,
    @localized_display_name="uberSELECT",
    @low_estimate=19,
    @product_id="df439009-d1de-4a3c-9ead-9e0e6f0294b9",
    @surge_multiplier=1.5>,
   #<Uber::Estimates::ResponseTypes::Price:0x0000000345b9a8
    @currency_code="RON",
    @display_name="Uber Child Seat",
    @distance=3.24,
    @duration=840,
    @estimate="RON20-24",
    @high_estimate=24,
    @localized_display_name="Uber Child Seat",
    @low_estimate=20,
    @product_id="99e0492a-acc1-412d-b650-48ed7fed9788",
    @surge_multiplier=1.0>]>

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/uber-estimates/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
