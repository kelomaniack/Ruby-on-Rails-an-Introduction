require 'httparty'

class Recipe

  FOOD2FORK_KEY = "e8371d9ef1bd86f0a957b91684b5ec2a"
  include HTTParty

  base_uri 'http://food2fork.com/api/search'
  default_params fields: "key, q:search"
  format :json

  def self.for term
    get("", query: {query: term})["elements"]
  end
end

pp Recipe.for "chicken"
