require 'sinatra'

class MyApp < Sinatra::Application
	enable :sessions

	configure :production do
		set :clean_trace, true
	end

	configure :development do
    # ...
	end

	helpers do
		# ...
	end
end

require_relative 'helpers/init'
require_relative 'models/init'
require_relative 'routes/init'