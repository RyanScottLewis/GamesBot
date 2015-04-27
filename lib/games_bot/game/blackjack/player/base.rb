module GamesBot
  module Game
    module Blackjack
      module Player
        
        # The base class for all players.
        class Base
          
          # Determine if this player's hand contains blackjack.
          # 
          # @return [Boolean]
          def has_blackjack?
            @cards.total == 21
          end
          
          # Determine if this player's hand went over 21.
          # 
          # @return [Boolean]
          def busted?
            @cards.total > 21
          end
          
          # Determine if this player's hand does not contain an ace.
          # 
          # @return [Boolean]
          def hard?
            @cards.include_suit?(:ace)
          end
          
          # Determine if this player's hand does not contain an ace.
          # 
          # @return [Boolean]
          def soft?
            !hard?
          end
          
        end
        
      end
    end
  end
end
