[![Gem Version](https://fury-badge.herokuapp.com/rb/params2session.png)](http://badge.fury.io/rb/params2session)

# Params2session

## Installation

Add this line to your application's Gemfile:

    gem 'params2session'

Then execute:

    bundle

## Usage

This gem can be used in two or more steps:

* Save variable from params to session
* (optional) Set default value
* Get variable from session

### Examples:

In controller:

```ruby
session_save :mode
do_some_stuff if session_param(:mode)
```

Or:

```ruby
session_save :mode
session_default 'all'
do_some_stuff if session_equal?(:mode, 'none')
```

Or:

```ruby
session_save :mode
session_update(:mode, 'all') if session_param(':mode') == 'none'
do_some_stuff if session_equal(:mode, 'some')
```

## View layer

`session_param` and `session_equal?` helpers are also available in views.

`session_equial?(param_name, value)` can be used in views to set class
on buttons or button groups depending on saved param state, or to render
different partial based on saved param.

## Internals

Params being saved in 'controller scope'. For example, in `UsersController`,
calling `session_save(:mode)` will save `params[:mode]` to `session['clients.mode']`

## License

This project rocks and uses MIT-LICENSE.