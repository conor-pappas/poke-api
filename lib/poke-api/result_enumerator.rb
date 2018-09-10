module PokeAPI
  class ResultEnumerator
    include Enumerable

    def initialize(resource, batch_size)
      @resource = resource
      @batch_size = batch_size
    end

    def each
      return to_enum(:each) unless block_given?
      offset = 0
      loop do
        response = APIWrapper.index(@resource, offset, @batch_size)
        response.each { |x| yield x }
        offset += @batch_size
        break unless response['next']
      end
    end
  end
end
