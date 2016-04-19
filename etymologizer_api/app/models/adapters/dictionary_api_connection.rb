module Adapters
  class DictionaryApiConnection
    include HTTParty

    attr_reader :connection

    def initialize
      @connection = self.class
    end

    def base_URL
      "http://www.dictionaryapi.com/api/v1/references/collegiate/xml/"
    end

    def URL(word)
      "#{URL}#{word}?key=#{APIkey}"
    end

    def query(word)
      result = connection.get(URL(word))
    end

private

  def API_key
    "272d9489-c102-4c30-b028-b67348a5b1f2"
  end


  end
end