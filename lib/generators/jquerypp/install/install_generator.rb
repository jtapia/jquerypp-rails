require 'rails'

if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module Jquerypp
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs jQuery++ #{Jquerypp::Rails::JQUERYPP_VERSION}"
        source_root File.expand_path('../../../../../vendor/assets/javascripts', __FILE__)

        def copy_jquerypp
          say_status("copying", "jQuery++ (#{Jquerypp::Rails::JQUERYPP_VERSION})", :green)
          copy_file "jquerypp.js", "public/javascripts/jquerypp.js"
        end


        def copy_jquerypp_lib
          say_status("copying", "jQuery++ lib (#{Jquerypp::Rails::JQUERYPP_VERSION})", :green)
          copy_entry "lib/", "public/javascripts/lib"
        end

      end
    end
  end
else
  module Jquerypp
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Just show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps"

        def do_nothing
          say_status("deprecated", "You are using Rails 3.1 with the asset pipeline enabled, so this generator is not needed.")
          say_status("", "The necessary files are already in your asset pipeline.")
          say_status("", "Just add `//= require jquerypp` to your app/assets/javascripts/application.js")
          say_status("", "If you upgraded your app from Rails 3.0 and still have jquerypp.js or rails.js in your javascripts, be sure to remove them.")
          say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
          # ok, nothing
        end
      end
    end
  end
end