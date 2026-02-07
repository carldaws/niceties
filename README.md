# Niceties

Small, expressive helpers for Ruby and Rails. The kind of thing you'd monkey-patch in your own app — given a permanent home.

## Installation

```ruby
gem 'niceties'
```

## Methods

### Object

```ruby
@user.try_each(:full_name, :nickname, :username)
# => returns first non-nil result

@user.coalesce(:full_name, :nickname, "Guest")
# => returns first present result, or fallback

@user.not_a?(Widget)
# => true if not a Widget
```

### Array

```ruby
["", nil, 4].tidy
# => [4]
```

### Numeric

```ruby
25.percent_of(200)          # => 50
5.plus_or_minus(2)          # => 3..7
5.plus_upto(2)              # => 5..7
5.minus_upto(2)             # => 3..5
```

### Time, Date, DateTime

```ruby
Time.current.plus_or_minus(1.hour)   # => Range
Time.current.plus_upto(1.hour)       # => now..future
Time.current.minus_upto(1.hour)      # => past..now

(Time.current + 1.day).future?       # => true
(Time.current - 1.day).past?         # => true
```

## Contributing

If you've written a helper and thought "this is too small for a gem" — that's what Niceties is for.

PRs welcome if the method is readable, unsurprising, and feels like Ruby.
