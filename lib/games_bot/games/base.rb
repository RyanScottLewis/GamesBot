module GamesBot
  module Games
    
    # The base class for all games.
    class Base
      
      class << self
        
        # The list of all game names and their classes
        def all
          @all ||= {}
        end
        
        def inherited(subclass)
          name = subclass.to_s.split(/::/).last.gsub( /([A-Z\d]+)([A-Z][a-z])/,'\1_\2' ).downcase # MyCoolGame converts to my_cool_game
          
          all[name] = subclass
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
