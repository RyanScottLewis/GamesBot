require 'games_bot/game/blackjack/player/base'

module GamesBot
  module Game
    module Blackjack
      module Player
        
        # The dealer player.
        class Dealer < Base
          
          # Determine if the dealer should hit.
          # 
          # Dealer keeps hitting until bust or won the game.
          # Hits on hard 17.
          # 
          # @param [<Player>] players
          # @return [Boolean]
          def should_hit?(players)
            return false if has_blackjack?

            score_to_beat = players.collect { |player| player.cards.total }.max

            @cards.total < score_to_beat && @cards.total <= 17
          end
          
        end
        
      end
    end
  end
end
