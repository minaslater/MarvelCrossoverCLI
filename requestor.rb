require "net/http"
require "uri"
require_relative "url_builder"

class Requestor
  def fetch!(url)
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    http.request(request)
  end

  def request(input)
    builder = URLBuilder.new(input)
    url = builder.build
    fetch!(url)
  end
end
