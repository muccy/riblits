# encoding: UTF-8

require "rubygems"
require "bundler/setup"
require 'sinatra'
require "sinatra/reloader"

class MyApp < Sinatra::Application
	configure :production do
		set :clean_trace, true
	end

	configure :development do
	    register Sinatra::Reloader
	    also_reload 'helpers/*.rb'
	    also_reload 'models/*.rb'
	    # dont_reload '/path/to/other/file'
	end

	helpers do
		# ...
	end
end

require_relative 'helpers/init'
require_relative 'models/init'
require_relative 'routes/init'