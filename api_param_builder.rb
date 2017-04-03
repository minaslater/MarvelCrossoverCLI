require_relative "secrets"
require "digest"

class APIParamBuilder
  attr_reader :ts, :hash

  def initialize
    @ts = Time.now.to_i
    @hash = encrypt_keys
  end

  def encrypt_keys
    Digest::MD5.hexdigest(@ts.to_s + PRIVATE_KEY + PUBLIC_KEY)
  end

  def to_s
    "apikey=#{PUBLIC_KEY}&hash=#{hash}&ts=#{ts}"
  end
end
