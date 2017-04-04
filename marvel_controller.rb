require_relative "requestor"

class MarvelCLIController
  attr_reader :requestor

  def initialize
    # ask user for two characters
    # make requests to API for both characters
    @requestor = Requestor.new
    character1_json = requestor.request(character1)
    character2_json = requestor.request(character2)
    @character_parser = CharacterParser.new
    id1 = character_parser.find_id(character1_json)
    id2 = character_parser.find_id(character2_json)
    # compare comic appearances with another API request by id
    # output matches
  end
end
