# classnames

This is a port of JavaScript's [classnames](https://www.npmjs.com/package/classnames) for Ruby. The API is basically the same except with Ruby's types.

![Gem](https://img.shields.io/gem/v/classnames)

### Example usage

```ruby
module ApplicationHelper
  include ClassNames

  def my_element(**opts)
    str = classnames(
      'takes',                      # string
      ['all', 'kinds'],             # array
      { of: true, not_me: false },  # hash
      ->{ 'arguments' },            # proc
      nil,                          # and ignores ...
      false,                        # ... falsey values
      opts.delete(:class)
    )
    # => "takes all kinds of arguments"

    tag.div(class: str, **opts) { 'So hot' }
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
