# Ruby2Igraph

Attempting port of [igraph c extension for ruby](https://github.com/alexgutteridge/igraph) to work with newer version of igraph as well as Ruby version 2.2.0.

## Prerequisites

### Install Igraph library

From gem folder:
```bash
script/install_igraph.sh
```

From app (or other)

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/MatthewRDodds/ruby_2_igraph/master/script/install_igraph)"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_2_igraph'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_2_igraph

## Usage

See [https://github.com/alexgutteridge/igraph/blob/master/README.txt](https://github.com/alexgutteridge/igraph/blob/master/README.txt)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruby_2_igraph/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
