# Params2session

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
do_some_stuff if session_param(:mode) == 'none'
```

Or:

```ruby
session_save :mode
session_update(:mode, 'all') if session_param(':mode') == 'none'
do_some_stuff if session_param == 'some'
```

## View layer

`session_param` helper also available in views.

## Internals

Params being saved in 'controller scope'. For example, in `UsersController`,
calling `session_save(:mode)` will save `params[:mode]` to `session['clients.mode']`

# License

This project rocks and uses MIT-LICENSE.