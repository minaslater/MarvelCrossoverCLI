require_relative "json_parser"
require "date"

class CrossoverParser < Parser
  attr_reader :comic_data

  def initialize(comic_json)
    @comic_data = to_hash(comic_json)
  end

  def find_title
    comic_data["data"]["results"][0]["title"]
  end

  def find_issue
    comic_data["data"]["results"][0]["issueNumber"]
  end

  def find_date
    date = comic_data["data"]["results"][0]["dates"][0]["date"]
    DateTime.parse(date).strftime("%B %d, %Y")
  end

  def find_creative_team
    creative_team = {}
    team_members = comic_data["data"]["results"][0]["creators"]["items"]
    team_members.each do |hash|
      job = hash["role"]
      name = hash["name"]
      creative_team[job] = name
    end
    creative_team
  end
end
