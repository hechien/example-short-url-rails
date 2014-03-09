class ShortenUrl
  
  def initialize(url)
    @url = url
    @client = Googl.client(Settings.googl.username, Settings.googl.password)
  end

  def shorten
    @client.shorten(@url).short_url
  end
end