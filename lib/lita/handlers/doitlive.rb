require "lita"

module Lita
  module Handlers
    class Doitlive < Handler

      def self.default_config(config)
        config.command_only = false
      end

      route %r{.*(do it live).*}i, :do_it_live

      def do_it_live(response)
        response.reply 'http://i.perezhilton.com/wp-content/uploads/2014/04/216701_v2.gif'
      end
    end
    Lita.register_handler(Doitlive)
  end
end
