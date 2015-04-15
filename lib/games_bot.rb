require 'cinch'

require 'games_bot/plugin/games'

module GuitarBot
  class << self
    
    def instance
      @instance ||= Cinch::Bot.new do
        
        configure do |config|
          config.nick     = 'GamesBot'
          config.realname = config.nick
          config.user     = config.nick
          
          config.messages_per_second = 5
          config.modes = [ 'B' ]
          
          config.server   = 'irc.snoonet.org'
          config.channels = [ '##games' ]
          
          config.plugins.plugins = [ Plugin::Games ]
        end
        
      end
    end
    
    def start
      instance.start
    end
    
  end
end
