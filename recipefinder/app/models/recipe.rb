require 'httparty'
require 'pp'

class Recipe
  include HTTParty

  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  pp base_uri
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  # The Recipe for class method should
  #
  # take a keyword to query
  # query the Food2Fork API for a result.
  #     add the HTTP query parameter key (your developer key) to each outgoing URL request to http://food2fork.com/api using HTTParty default_params.
  #     obtain the key value from an environment variable FOOD2FORK_KEY
  # obtain the url (and/or port) value from an environment variable FOOD2FORK_SERVER_AND_PORT
  #FOOD2FORK_KEY = "e8371d9ef1bd86f0a957b91684b5ec2a"

  def self.for keyword
    get("/search", query: {q: keyword})["recipes"]
  end
end

pp Recipe.for('chocolate')
