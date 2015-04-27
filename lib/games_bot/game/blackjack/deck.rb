require 'games_bot/game/blackjack/card'

module GamesBot
  module Game
    module Blackjack
      
      # A deck of cards.
      # TODO: `CardPile` class then `Deck < CardPile`
      class Deck
        
        def initialize
          setup_cards
        end
        
        # Get the cards in this deck.
        # 
        # @return [<Card>]
        attr_reader :cards
        
        # Draw the top card in this deck.
        # 
        # @return [Card]
        def draw
          @cards.shift
        end
        
        # Determine if this deck contains a card with the given suit.
        # 
        # @param [#to_s] suit
        # @return [Boolean]
        def include_suit?(suit)
          @cards.collect(&:suit).any?( suit.to_s.strip.capitalize )
        end
        
        # Get the total value of the cards in this deck.
        # 
        # @return [Integer]
        def value
          @cards.collect(&:to_i).inject( 0, :+ )
        end
        
        protected
        
        # Setup the cards.
        def setup_cards
          @cards = []
          
          # Card::SUITS.each do |suit|
          #   Card::NAMES.each do |name|
          #     @cards << Card.new( name: name, suit: suit )
          #   end
          # end
          # TODO: Remove above if below works
          Card::SUITS.product(Card::NAMES) { |suit, rank| @cards << Card.new( name: name, suit: suit ) }
          
          @cards.shuffle!
        end
        
      end
      
  end
end

