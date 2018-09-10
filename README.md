# PokeAPI

A Ruby wrapper for the PokéAPI (http://pokeapi.co/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "poke-api"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install poke-api

## Usage

### Loading Resources

You can access specific resources in the API directly through the `PokeAPI::Loader` class:

```ruby
loader = PokeAPI::Loader.new("pokemon")
loader.all
# => [{ "name" => "Bulbasaur", "national_id" => 1, ... }, ...]
loader.find(169)
# => { "name" => "Crobat", "national_id" => 169, ... }
```

## Contributing

1. Fork it ( https://github.com/ahorner/poke-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
