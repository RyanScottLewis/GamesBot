module GamesBot
  module Game
    
    # The base class for all games.
    class Base
      
      class << self
        
        def inherited(subclass)
          name = subclass.to_s.split(/::/).last.gsub( /([A-Z\d]+)([A-Z][a-z])/,'\1_\2' ).downcase.to_sym # GamesBot::Games::MyCoolGame converts to :my_cool_game
          
          Game.all[name] = subclass
        end
        
      end
      
      def start
        # TODO
      end
      
      def stop
        # TODO
      end
      
    end
    
  end
end
