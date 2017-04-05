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

  def request_id(input)
    builder = URLBuilder.new
    url = builder.build_with_name(input)
    fetch!(url)
  end

  def request_comic(id1, id2)
    builder = URLBuilder.new
    url = builder.build_with_ids(id1, id2)
    fetch!(url)
  end
end
