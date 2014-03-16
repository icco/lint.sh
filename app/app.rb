module LintSh
  class App < Padrino::Application
    register SassInitializer
    use ActiveRecord::ConnectionAdapters::ConnectionManagement
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    set :css_asset_folder, 'css'
    set :js_asset_folder, 'js'

    ##
    # Caching support.
    register Padrino::Cache
    enable :caching

    ##
    # Application configuration options.
    set :logging, true            # Logging in STDOUT for development and file for production (default only for development)
    disable :flash                # Disables sinatra-flash (enabled by default if Sinatra::Flash is defined)
  end
end
