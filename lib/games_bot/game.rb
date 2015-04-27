module GamesBot
  module Game
    
    class << self
      
      # The list of all game names and their classes
      def all
        @all ||= {}
      end
      
    end
    
  end
end
