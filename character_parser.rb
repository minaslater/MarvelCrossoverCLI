require_relative "json_parser"

class CharacterParser < Parser
  attr_reader :character_data

  def initialize(character_json)
    @character_data = to_hash(character_json)
  end

  def find_id
    character_data["data"]["results"][0]["id"]
  end
end
