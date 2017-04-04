require_relative "json_parser"

class CharacterParser < Parser
  def find_id(character_json)
    character_data = to_hash(character_json)
    character_data["data"]["results"]["id"]
  end
end
