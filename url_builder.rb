require_relative "api_param_builder"
require "uri"

class URLBuilder
  attr_reader :character_name

  def initialize(character_name)
    @character_name = character_name
  end

  def character_to_s
    character_url = URI.escape(character_name)
    "&name=#{character_url}"
  end

  def build
    params = APIParamBuilder.new
    "https://gateway.marvel.com/v1/public/characters?" + params.to_s + character_to_s
  end
end
