require 'httpclient'
require 'json'

module PokeAPI
  module APIWrapper
    API_ROOT_URL = 'http://pokeapi.co/api/v2'.freeze

    def self.index(resource, offset = 0, limit)
      request "#{API_ROOT_URL}/#{resource}?limit=#{limit}&offset=#{offset}"
    end

    def self.get(resource, id)
      request "#{API_ROOT_URL}/#{resource}/#{id}/"
    end

    def self.client
      @client ||= HTTPClient.new
    end

    def self.request(url)
      cache[url] ||= begin
        response = client.get_content(url)
        JSON.parse(response) if response
      end
    end

    class << self
      private

      def cache
        # TODO: add an option to make this an actual cache store
        @cache ||= {}
      end
    end
  end
end
