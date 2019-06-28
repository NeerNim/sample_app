require 'rest-client'

class BingSearch
  attr_accessor :query

  def initialize(query)
    @query = query 
    @url = 'https://www.bing.com/search'
  end

  def getQuery
    RestClient.get @url, {params: {q: @query}}
  end

  def display_query
    getQuery.code
    getQuery.body
    getQuery.cookies
    getQuery.headers
  end
end

results = BingSearch.new("hey")
results.display_query

