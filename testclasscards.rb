Class Cards

  def the_cards_themselves
    # a deck of 52 cards.
    # The 52 cards are split up into four suits (Clubs, Diamonds, Spades, and Hearts). There are 13 cards of each suit.
    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
    types = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
  suits*types == @deck
  puts "the cards are #{@deck}"
  end
  def do_the_class_things
    the_cards_themselves
  end
end

run_the_thing = Cards.new
run_the_thing.do_the_class_things
