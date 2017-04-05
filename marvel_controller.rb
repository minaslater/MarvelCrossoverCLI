require_relative "requestor"
require_relative "character_parser"

class MarvelCLIController
  attr_reader :requestor, :character_parser

  def initialize
    character1 = "Captain America"
    character2 = "Wolverine"
    # ask user for two characters
    # make requests to API for both characters
    @requestor = Requestor.new
    character1_json = requestor.request_id(character1)
    character2_json = requestor.request_id(character2)
    @character_parser = CharacterParser.new
    id1 = character_parser.find_id(character1_json)
    id2 = character_parser.find_id(character2_json)
    # compare comic appearances with another API request by id
    comic_json = requestor.request_comic(id1, id2)
    # output matches
  end
end

MarvelCLIController.new
