# classnames

This is a port of JavaScript's [classnames](https://www.npmjs.com/package/classnames) for Ruby. The API is basically the same except with Ruby's types.

![Gem](https://img.shields.io/gem/v/classnames)

### Example usage

```ruby
module ApplicationHelper
  include ClassNames

  def example
    str = classnames(
      'takes',
      ['all', 'kinds'],
      { of: true, not_me: false },
      ->{ 'arguments' },
      nil, # and ignores ...
      false, # ... falsey values
    )
    # => "takes all kinds of arguments"

    content_tag(:div, class: str) { 'So hot' }
  end
end
```

### Installation

Add `classnames` to your `Gemfile`:

```rb
gem 'classnames'
```

### License

MIT
