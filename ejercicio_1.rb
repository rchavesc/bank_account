class Card
  attr_accessor :number, :suit

  def initialize(number, suit)
    @number = number
    @suit = suit
  end

  def show
    puts "The card number is #{@number}; and its suit is #{@suit}"
  end
end

choose_suit = ['C', 'D', 'E', 'T']
samples = []

5.times do |i| 
  create_card = Card.new(Random.rand(1..13), choose_suit.sample)
  create_card.show
end
  