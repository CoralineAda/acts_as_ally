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

## A Note on Testing

This gem has no tests, because setting expectations for allies is disrespectful and counterproductive.

## Usage

In your model:

    class Man < ActiveRecord::Base
      include ActsAsAlly
    end

In console:

    2.1.1 :001 > Man.count
       (0.2ms)  SELECT COUNT(*) FROM "men"
     => 10

    2.1.1 :002 >  Man.not_all
        (0.1ms)  SELECT COUNT(*) FROM "men"
        Man Load (0.1ms)  SELECT "men".* FROM "men" LIMIT 1
     => [#<Man id: 1, created_at: "2014-04-28 23:22:02", updated_at: "2014-04-28 23:22:02">]

    2.1.1 :003 > Man.not_all.first.cookies
        Man Load (0.2ms)  SELECT "men".* FROM "men"
        (0.1ms)  SELECT COUNT(*) FROM "men"
     => []

## You Might Also Like

If you find this gem useful, check out [WellActually](https://github.com/bantik/well_actually)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/acts_as_ally/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

