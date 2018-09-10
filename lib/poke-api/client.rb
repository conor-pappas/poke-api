module PokeAPI
  class Client
    include Enumerable

    attr_accessor :resource

    DEFAULT_BATCH_SIZE = 50

    def initialize(resource)
      @resource = resource
      @cache = {}
    end

    def find(id)
      ::PokeAPI::APIWrapper.get(resource, id)
    end

    def all
      ::PokeAPI::ResultEnumerator.new(resource, DEFAULT_BATCH_SIZE).each.to_a
    end

    def each
      return to_enum(:each) unless block_given?
      ::PokeAPI::ResultEnumerator.new(resource, DEFAULT_BATCH_SIZE).each do |result|
        yield ::PokeAPI::APIWrapper.request(result['url'])
      end
    end
  end
end
