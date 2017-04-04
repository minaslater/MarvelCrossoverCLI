require_relative "requestor"

class MarvelCLIController
  attr_reader :requestor

  def initialize
    # ask user for two characters
    # make requests to API for both characters
    @requestor = Requestor.new
    requestor.request(character1)
    requestor.request(character2)
    # compare comic appearances
    # output matches
  end
end
