require "sinatra"

get "/results" do
  def getresults
    @results = $db[params[:search]]
    if @results == nil
      @results = "Not a Book Dummy"
    end
end
getresults()
erb :results
end
