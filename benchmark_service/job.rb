require 'faraday'

module Job
  @queue = :default

  def self.perform(options)
    url = options['url']
    p url
    conn = Faraday::Connection.new(url: url)
    res = conn.get '/'
    if res.body == "hello world"
      puts "Success"
    else
      puts "Failure"
    end
  end
end
