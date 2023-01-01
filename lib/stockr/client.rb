require "faraday"

module Stockr
	class Client
		BASE_URL = "https://www.alphavantage.co/query"

		attr_reader :api_key, :adapter

		def initialize(api_key:, adapter: Faraday.default_adapter)
			@api_key = api_key
			@adapter = adapter
		end

		def account
		end

		def applications
		end

		def plans
		end


		def connection
			@connection ||= Faraday.new do |conn|
				conn.url_prefix = BASE_URL
				conn.request :json
				conn.response :json, content_type: "application/json"
				conn.adapter adapter
			end
		end
	end
end
