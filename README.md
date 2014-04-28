acts_as_ally
============

Allows a Rails model to behave like an ally, maybe.

## Installation

Add this line to your application's Gemfile:

    gem 'acts_as_ally'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts_as_ally

## Usage

    class Man < ActiveRecord::Base
      include ActsAsAlly
    end

    > Man.count
    => 10

    > Man.not_all
    => 1

## Contributing

1. Fork it ( https://github.com/[my-github-username]/acts_as_ally/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

