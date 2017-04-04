require "json"

class Parser
  attr_reader :json_body

  def initialize(json_body)
    @json_body = json_body
  end

  def to_hash
    JSON.parse(json_body)
  end
end
