require 'httparty'
require 'pp'

class Recipe

  #FOOD2FORK_KEY = "e8371d9ef1bd86f0a957b91684b5ec2a"
  include HTTParty

  base_uri 'http://food2fork.com/api/'
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for keyword
    get("/search", query: {q: keyword})["recipes"]
  end
end

# p ENV["FOOD2FORK_KEY"]
# pp Recipe.for "chicken"
