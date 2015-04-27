require 'games_bot/has_attributes'

module GamesBot
  module Game
    module Blackjack
      
      class Card
        
        NAMES = %w{2 3 4 5 6 7 8 9 10 Jack Queen King Ace}
        SUITS = %w{Spades Hearts Diamonds Clubs}
        
        include Comparable
        include HasAttributes
        
        # Get the name of this card.
        # 
        # @return [String]
        attr_reader :name
        
        # Set the name of this card.
        # 
        # @param [#to_s] value
        # @return [String]
        def name=(value)
          value = value.to_s.strip.capitalize
          
          raise ArgumentError, 'invalid card name' unless NAMES.include?(value)
          
          @name = value
        end
        
        # The suit of this card.
        # 
        # @return [String]
        attr_reader :suit
        
        # The suit of this card.
        # 
        # @param [#to_s] value
        # @return [String]
        def suit=(value)
          value = value.to_s.strip.capitalize
          
          raise ArgumentError, 'invalid card suit' unless SUITS.include?(value)
          
          @suit = value
        end
        
        # Get the rank of this card.
        # 
        # @return [Integer]
        def to_i
          NAMES.index(@name)
        end
        
        # Allow card to be compared with another object.
        def <=>(other)
          to_i <=> other.to_i
        end
        
      end
      
  end
end
