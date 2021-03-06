# Count-Min Sketch

A Ruby implementation of Graham Cormode and S. Muthu Muthukrishnan's probabilistic sub-linear space streaming algorithm. Relies on [nashby's](https://github.com/nashby) [CityHash gem](https://github.com/nashby/cityhash). To read more about count-min sketches, see the [Wikipedia article](http://en.wikipedia.org/wiki/Count%E2%80%93min_sketch).

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

Accepts two optional arguments, `k`, the number of hash functions, and `m`, the column size. These default to 10 and 100000 respectively.

**Without Arguments**

```ruby
require 'count_min_sketch'

sketch = CountMinSketch::Counter.new

sketch.k
# => 10
sketch.m
# => 100000
```

**With Arguments**

```ruby
require 'count_min_sketch'

k = 30
m = 128

sketch = CountMinSketch::Counter.new(k, m)

sketch.k
# => 30
sketch.m
# => 128
```

There are two methods: `insert`, which adds data and returns the count, and `get_count`. The former takes one required argument, the data which you want to add to the sketch, and an optional second argument, the number of times you would like to add it. This defaults to `1`.

```ruby
require 'count_min_sketch'

k = 30
m = 128
sketch = CountMinSketch::Counter.new(k, m)

name = "Guy Fieri"
restaurant = "Guy's American Kitchen and Bar"

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
