require 'singleton'
class ShortenUrl
  include Singleton
  
  def initialize
    @client = Googl.client(Settings.googl.username, Settings.googl.password)
  end

  def shorten(url)
    @client.shorten(url).short_url
  end
end