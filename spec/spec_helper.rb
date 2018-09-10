require 'poke-api'

require 'minitest'
require 'minitest/unit'
require 'minitest/autorun'
require 'minitest/mock'

require 'webmock'
require 'vcr'
require 'minitest-vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
end

MinitestVcr::Spec.configure!
