require 'sinatra'
require "sinatra/reloader"

class MyApp < Sinatra::Application
	enable :sessions

	configure :production do
		set :clean_trace, true
	end

	configure :development do
    register Sinatra::Reloader
    # also_reload '/path/to/some/file'
    # dont_reload '/path/to/other/file'
	end

	helpers do
		# ...
	end
end

require_relative 'helpers/init'
require_relative 'models/init'
require_relative 'routes/init'