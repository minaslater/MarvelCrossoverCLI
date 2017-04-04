require "json"

class Parser
  # attr_reader :json
  #
  # def initialize(json)
  #   @json = json
  # end

  def to_hash(json)
    json_body = json.body
    JSON.parse(json_body)
  end
end
