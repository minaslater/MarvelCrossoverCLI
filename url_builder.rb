require_relative "api_param_builder"
require "uri"

class URLBuilder
  # def initialize(character_name)
  #   @character_name = character_name
  # end

  def character_to_s(character_name)
    character_url = URI.escape(character_name)
    "&name=#{character_url}"
  end

  def build_with_name(character_name)
    params = APIParamBuilder.new
    "http://gateway.marvel.com/v1/public/characters?" + params.to_s + character_to_s(character_name)
  end

  def build_with_ids(id1, id2)
    params = APIParamBuilder.new
    "http://gateway.marvel.com/v1/public/characters/" + "#{id1}" + "/comics?" + params.to_s + "&sharedAppearances=#{id2}&orderBy=-onsaleDate&limit=1"
  end
end
