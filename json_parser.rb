require "json"

class Parser
  # attr_reader :json
  #
  # def initialize(json)
  #   @json = json
  # end

  def to_hash(json)
    JSON.parse(json.body)
  end
end
