# Morseficator

You're competing in a battle on a far away planet and you're in some trouble. You need to send a distress call to your home base for reinforcements, however, enemy agents are listening. Luckily your team have a secret encoding for messages. It's Morse code with further obfuscation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'morseficator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install morseficator

## Usage

```
Usage:
    morseficator [OPTIONS] [TEXT]

Parameters:
    [TEXT]             text to hide from an enemy

Options:
    -f, --file FILE    use a file as an input
    -h, --help         print help
```

Alternatively you can use `Morseficator` module directly in your code:

```ruby
irb(main):001:0> require 'morseficator'
=> true
irb(main):002:0> Morseficator.run(text: 'HELLO WORLD')
=> "4|1|1a2|1a2|c/1b|c|1a1|1a2|a2"
irb(main):003:0> Morseficator.run(file: '/path/to/file')
=> "1a|3|a2\n1a|3|a2"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/duderman/morseficator.
