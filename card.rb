class Card
    attr_accessor :rank, :suit
  
    def initialize(rank, suit)
      self.rank = rank
      self.suit = suit
    end
  
    def output_card
      puts "#{self.rank} of #{self.suit}"
    end
  
    def self.random_card
      Card.new(rand(10), :spades)
    end
  end

  class Deck
    def initialize
        @cards = []
        @cards.push(Card.new('Ace', :spades))
        @cards.push(Card.new('Ace', :diamonds))
        @cards.push(Card.new('Ace', :hearts))
        @cards.push(Card.new('Ace', :clovers))

        @cards.push(Card.new(2, :spades))
        @cards.push(Card.new(2, :diamonds))
        @cards.push(Card.new(2, :hearts))
        @cards.push(Card.new(2, :clovers))

        @cards.push(Card.new(3, :spades))
        @cards.push(Card.new(3, :diamonds))
        @cards.push(Card.new(3, :hearts))
        @cards.push(Card.new(3, :clovers))

        @cards.push(Card.new(4, :spades))
        @cards.push(Card.new(4, :diamonds))
        @cards.push(Card.new(4, :hearts))
        @cards.push(Card.new(4, :clovers))

        @cards.push(Card.new(5, :spades))
        @cards.push(Card.new(5, :diamonds))
        @cards.push(Card.new(5, :hearts))
        @cards.push(Card.new(5, :clovers))

        @cards.push(Card.new(6, :spades))
        @cards.push(Card.new(6, :diamonds))
        @cards.push(Card.new(6, :hearts))
        @cards.push(Card.new(6, :clovers))

        @cards.push(Card.new(7, :spades))
        @cards.push(Card.new(7, :diamonds))
        @cards.push(Card.new(7, :hearts))
        @cards.push(Card.new(7, :clovers))

        @cards.push(Card.new(8, :spades))
        @cards.push(Card.new(8, :diamonds))
        @cards.push(Card.new(8, :hearts))
        @cards.push(Card.new(8, :clovers))

        @cards.push(Card.new(9, :spades))
        @cards.push(Card.new(9, :diamonds))
        @cards.push(Card.new(9, :hearts))
        @cards.push(Card.new(9, :clovers))

        @cards.push(Card.new(10, :spades))
        @cards.push(Card.new(10, :diamonds))
        @cards.push(Card.new(10, :hearts))
        @cards.push(Card.new(10, :clovers))

        @cards.push(Card.new('Jack', :spades))
        @cards.push(Card.new('Jack', :diamonds))
        @cards.push(Card.new('Jack', :hearts))
        @cards.push(Card.new('Jack', :clovers))

        @cards.push(Card.new('Queen', :spades))
        @cards.push(Card.new('Queen', :diamonds))
        @cards.push(Card.new('Queen', :hearts))
        @cards.push(Card.new('Queen', :clovers))

        @cards.push(Card.new('King', :spades))
        @cards.push(Card.new('King', :diamonds))
        @cards.push(Card.new('King', :hearts))
        @cards.push(Card.new('King', :clovers))

    end

    def output_deck
        @cards.each do |card|
            card.output_card
        end
    end

    def shuffle
        @cards.shuffle!
    end

    def deal
        card = @cards.shift
        card.output_card
    end

  end

deck = Deck.new
puts "Before shuffle \n\n\n"
deck.output_deck
deck.shuffle
puts "After shuffle \n\n\n"
deck.output_deck

puts "Calling deal \n\n\n"
deck.deal