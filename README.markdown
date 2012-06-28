# jquerypp-rails

jQuery++! For Rails! So great.

jQuery++ is a collection of all the DOM utilities and special events jQuery forgot about. Come learn about jQuery++ and how it can be useful to your project.

This gem provides:

  * jQuery++

## Installation

```ruby
gem "jquerypp-rails"
```

And run `bundle install`. The rest of the installation depends on
whether the asset pipeline is being used.

### Rails 3.1 or greater (with asset pipeline *enabled*)

The jquery and jquery-ujs files will be added to the asset pipeline and available for you to use. If they're not already in `app/assets/javascripts/application.js` by default, add these lines:

```js
//= require jquerypp
```