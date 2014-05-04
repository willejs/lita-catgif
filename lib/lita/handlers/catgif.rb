require "lita"
require "net/http"
require "uri"

module Lita
  module Handlers
    class Catgif < Handler
      route(/^catgif/, :catgif, command: true, help: { "catgif" => "Returns a random Catgif" })

      def catgif(response)
      	res = Net::HTTP.get_response(URI('http://thecatapi.com/api/images/get?format=src&type=gif'))
        response.reply(res['location'])
      end
    end

    Lita.register_handler(Catgif)
  end
end
