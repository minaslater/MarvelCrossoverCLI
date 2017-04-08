require_relative "requestor"
require_relative "character_parser"
require_relative "crossover_parser"
require_relative "viewer"

class MarvelCLIController
  attr_reader :requestor, :viewer

  def initialize
    @viewer = Viewer.new
    viewer.input
    character1 = viewer.character1
    character2 = viewer.character2
    # ask user for two characters
    # make requests to API for both characters
    @requestor = Requestor.new
    character1_json = requestor.request_id(character1)
    character2_json = requestor.request_id(character2)
    id1 = CharacterParser.new(character1_json).find_id
    id2 = CharacterParser.new(character2_json).find_id
    # compare comic appearances with another API request by id
    comic_json = requestor.request_comic(id1, id2)
    # output matches
    viewer.output(comic_json)
  end
end

MarvelCLIController.new
