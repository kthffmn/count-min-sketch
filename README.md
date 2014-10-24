# CountMinSketch

Ruby implementation, relying on [nashby's](https://github.com/nashby) [CityHash gem](https://github.com/nashby/cityhash), of Graham Cormode and S. Muthu Muthukrishnan's probabilistic sub-linear space streaming algorithm.

## Install

Add this line to your application's Gemfile:

```ruby
gem 'count_min_sketch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install count_min_sketch

## Usage

Accepts two arguments, `k` being the number of hash functions and `m` being the array size.

```ruby
require 'count_min_sketch'

name = "Guy Fieri"
restaurant = "Guy's American Kitchen and Bar"

k = 30
m = 128
sketch = CountMinSketch::Counter.new(k, m)

sketch.insert(name)
sketch.insert(restaurant, 2)

sketch.get_count(name)
# => 1

sketch.get_count(restaurant)
# => 2
```

## Contributing

1. Fork it ( https://github.com/kthffmn/count_min_sketch/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
