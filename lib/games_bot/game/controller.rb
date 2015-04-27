module GamesBot
  module Game
    
    # The game controller.
    class Controller
      
      # @param [#to_sym] name
      def initialize(name)
        @game = Game.all[name].new
      end
      
    end
    
  end
end
