require 'cinch/plugin'

module GamesBot
  module Plugin
    
    class Games
      
      include Cinch::Plugin

      match /start (.+)/, method: :start
      match /stop/,       method: :stop
      match /list/,       method: :list
      match /help (.+)?/, method: :help
      
      def start( message, options )
        
      end
      
      def stop( message, options )
        
      end
      
      def list( message, options )
        
      end
      
      def help( message, options )
        
      end
  
    end
    
  end
end
