require_relative "api_param_builder"

class URLBuilder
  attr_reader :character_name

  def initialize(character_name)
    @character_name = character_name
  end

  def build

    params = APIParamBuilder.new
    "https://gateway.marvel.com/v1/public/characters?" + 
  end
end
