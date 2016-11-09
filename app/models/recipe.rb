class Recipe
  include HTTParty
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  default_params fields: "key_value", q="search"
  format :json

  def self.for(term)
    get("", query: { query: term })["elements"]
  end
end 
