require 'sinatra'
require 'rubygems'
require 'mustache/sinatra'


class App < Sinatra::Base

  register Mustache::Sinatra

  set :root, File.dirname(__FILE__)

  Dir["#{root}/controllers/*.rb"].each {|file| require file}
  Dir["#{root}/views/*.rb"].each {|file| require file}

  set :mustache, {:views => "#{root}/views", :templates => "#{root}/templates"}


end