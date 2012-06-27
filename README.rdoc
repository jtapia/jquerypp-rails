# jquerypp-rails

jQuery++! For Rails! So great.

This gem provides:

  * jQuery++

## Installation

Apps generated with Rails 3.1 or later include jquery-rails in the Gemfile by default. So just make a new app:

```sh
rails new myapp
```

If upgrading from an older version of rails, or for rails 3.0 apps,
add the jquery-rails gem to your Gemfile.

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

In order to use the themed parts of jQuery UI, you will also need to supply [your own theme CSS](http://jqueryui.com) (or use the jquery-ui-rails gem mentioned above).

### Rails 3.0 (or greater with asset pipeline *disabled*)

This gem adds a single generator: `jquery:install`. Running the generator will remove any Prototype JS files you may happen to have, and copy jQuery++ to the `public/javascripts` directory.

This gem will also hook into the Rails configuration process, removing Prototype and adding jQuery to the javascript files included by the `javascript_include_tag(:defaults)` call. While this gem contains the minified and un-minified versions of jQuery and jQuery UI, only the minified versions are included in `:defaults`.

To invoke the generator, run:

```sh
rails generate jquery:install
```

You're done!

## Contributing

Feel free to open an issue ticket if you find something that could be improved. A couple notes:

## Acknowledgements

Many thanks are due to all of [the jquery-rails contributors](https://github.com/rails/jquery-rails/graphs/contributors). Special thanks to [JangoSteve](http://github.com/JangoSteve) for tirelessly answering questions and accepting patches, and the [Rails Core Team](https://github.com/organizations/rails/teams/617) for making jquery-rails an official part of Rails 3.1.

Copyright [André Arko](http://arko.net), released under the MIT License.