class Viewer
  attr_reader :character1, :character2

  def input
    puts "Please enter a Marvel character:"
    @character1 = gets.chomp
    puts "Please enter another character:"
    @character2 = gets.chomp
  end

  def output(comic_json)
    comic_parser = CrossoverParser.new(comic_json)
    puts "Title: #{comic_parser.find_title}"
    puts "Issue Number: #{comic_parser.find_issue}"
    puts "Release Date: #{comic_parser.find_date}"
    team = comic_parser.find_creative_team
    team.each_pair do |job, name|
      puts "#{job}: #{name}"
    end
  end
end
