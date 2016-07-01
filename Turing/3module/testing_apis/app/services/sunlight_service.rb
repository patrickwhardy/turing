class SunlightService

  def initialize
    @_conn = Faraday.new(url: "http://congress.api.sunlightfoundation.com")
  end

  def legislators(params)
    results = JSON.parse(response(params).body, symbolize_names: true)[:results]
  end

  private
    def response(params)
      conn.get "/legislators", params.merge(apikey: ENV["sunlight_api_key"])
    end

    def conn
      @_conn
    end
end
