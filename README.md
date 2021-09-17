# SimpleNullObject

> Null Object Pattern which includes some db operation methods and user

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_null_object'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install simple_null_object

## Usage

> If some object is nil we can set it to our NullObject which has some predefined methods

```ruby
@post = nil
post = @post || SimpleNullObject::Pattern
```

> Now We can use the methods on post as @post is nil.

Methods available are.

```ruby
post.current_user # Guest User
post.id # Record Not Found Error
post.valid? # false
post.present? # false
post.blank? # true
post.save # false
post.save! # RecordInvalid Error
post.update # false
post.update! # RecordInvalid Error
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/da-vinci-noob/simple_null_object. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/da-vinci-noob/simple_null_object/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleNullObject project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/da-vinci-noob/simple_null_object/blob/main/CODE_OF_CONDUCT.md).
