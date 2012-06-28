# jquerypp-rails

jQuery++ is a collection of all the DOM utilities and special events jQuery forgot about. Come learn about jQuery++ and how it can be useful to your project.

This gem provides:

  * jQuery++

And includes:

	- DOM HELPERS
		* Animate
		* Compare
		* Cookie
		* Dimensions
		* Form Params
		* Range
		* Selection
		* Styles
		* Within

	- EVENTS
		* Destroyed
		* Drag
		* Drop
		* Fastfix
		* Hover
		* Key
		* Pause


## Installation

Add into your Gemfile:

```ruby
gem "jquerypp-rails"
```

And run `bundle install`. The rest of the installation depends on whether the asset pipeline is being used.

### Rails 3.1 or greater (with asset pipeline *enabled*)

The jquery++ file will be added to the asset pipeline and available for you to use. If they're not already in `app/assets/javascripts/application.js` by default, add these lines:

```js
//= require jquerypp
```

You're done!

## More Info

For more information about all functionality and implementation of it, visit http://jquerypp.com/

## Contributing

Feel free to open an issue ticket if you find something that could be improved.
