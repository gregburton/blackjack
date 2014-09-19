#it will be MUCH easier to compare this to previous projects/lessons on a second screen at home. (which requires that I clean off my desk and stop being lazy)

# Create a game of blackjack that one person plays on the command line against a computer dealer.

# Requirements:
  # Player starts game with $100 and bets are $10 dollars.
    # Allow the player to keep playing as long as they have money.
  # You can assume the dealer reshuffles all cards after every round.
  # This game should be fully object-oriented.

# To submit your homework, create a repository on GitHub and post the link to that repository as a comment on this thread.

# attr_accessor will be super useful for this project since it allows you to take instance variables from one class and use them elsewhere (see: http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby)

#look at a full deck of cards when I get home. take them out. see if that proves to be helpful.


#game actions vs. dealer actions vs. player actions?

#require 'pry'
#binding.pry
  #how_tf does doing testing in pry work?

Class Cards

  def the_cards
    # there are 52 cards, which are split up into four suits (Clubs, Diamonds, Spades, and Hearts). There are 13 cards of each suit.
    #not using random but a "flat_map"
    #not sure if this should be an array or a hash
    all_cards = [
    {:suit => "hearts", type: "2", value: "2"}
    {:suit => "hearts", type: "3", value: "3"}
    {:suit => "hearts", type: "4", value: "4"}
    {:suit => "hearts", type: "5", value: "5"}
    {:suit => "hearts", type: "6", value: "6"}
    {:suit => "hearts", type: "7", value: "7"}
    {:suit => "hearts", type: "8", value: "8"}
    {:suit => "hearts", type: "9", value: "9"}
    {:suit => "hearts", type: "10", value: "10"}
    {:suit => "hearts", type: "J", value: "10"}
    {:suit => "hearts", type: "Q", value: "10"}
    {:suit => "hearts", type: "K", value: "10"}
    {:suit => "hearts", type: "A", value: "a"}
    {:suit => "spades", type: "2", value: "2"}
    {:suit => "spades", type: "3", value: "3"}
    {:suit "spades", type: "4", value: "4"}
    {:suit "spades", type: "5", value: "5"}
    {:suit "spades", type: "6", value: "6"}
    {:suit "spades", type: "7", value: "7"}
    {:suit "spades", type: "8", value: "8"}
    {:suit "spades", type: "9", value: "9"}
    {:suit "spades", type: "10", value: "10"}
    {:suit "spades", type: "J", value: "10"}
    {:suit "spades", type: "Q", value: "10"}
    {:suit "spades", type: "K", value: "10"}
    {:suit "spades", type: "A", value: "a"}
    {:suit "diamonds", type: "2", value: "2"}
    {:suit "diamonds", type: "3", value: "3"}
    {:suit "diamonds", type: "4", value: "4"}
    {:suit "diamonds", type: "5", value: "5"}
    {:suit "diamonds", type: "6", value: "6"}
    {:suit "diamonds", type: "7", value: "7"}
    {:suit "diamonds", type: "8", value: "8"}
    {:suit "diamonds", type: "9", value: "9"}
    {:suit "diamsonds", type: "10", value: "10"}
    {:suit "diamonds", type: "J", value: "10"}
    {:suit "diamonds", type: "Q", value: "10"}
    {:suit "diamonds", type: "K", value: "10"}
    {:suit "diamonds", type: "A", value: "a"}
    {:suit "clubs", type: "2", value: "2"}
    {:suit "clubs", type: "3", value: "3"}
    {:suit "clubs", type: "4", value: "4"}
    {:suit "clubs", type: "5", value: "5"}
    {:suit "clubs", type: "6", value: "6"}
    {:suit "clubs", type: "7", value: "7"}
    {:suit "clubs", type: "8", value: "8"}
    {:suit "clubs", type: "9", value: "9"}
    {:suit "clubs", type: "10", value: "10"}
    {:suit "clubs", type: "J", value: "10"}
    {:suit "clubs", type: "Q", value: "10"}
    {:suit "clubs", type: "K", value: "10"}
    {:suit "clubs", type: "A", value: "a"}]

    all_cards = @deck
    #how do i combine the suits and types into a deck. need to create an instance variable deck that I can carry through the game of blackjack
  end
end

    # A (Ace) = 1 OR 11 points. <- WILL NEED TO CODE HOW TO MAKE ACE HAVE A VARIABLE VALUE OF 1 OR 11 BASED UPON WHAT A + THE OTHER CARD ADD UP TO, IN THE CASE OF THE DEALER. (or, alternatively, I could have the ace be worth 11 unless the player busts?)
      # Whether you assign the ace card a point value of 1 or 11 depends on which value would get you to (or as close as possible to) 21 points without exceeding 21.
      # the_player will determine the valuation of the Ace, and can decide the change it in mid-hand. In the last example, for instance, say you draw an Eight to the Ace and six. That would "bust" your hand if the Ace was counted as 11, so you drop it to a one. In that situation, you count it as one, and you've got a 15. (https://www.cs.bu.edu/~hwxi/academic/courses/CS320/Spring02/assignments/06/blackjack.html)
      # is the value of the ace variable for the_dealer as well, or it constant?

Class Deck

  def deck_of_cards
    #contains the contents of the class Cards
  end
  @deck.shuffle
  #shuffle =
end

Class Player

  def the_player
    #aka the user of the game/computer
  end
  #starts game w/ $100
  def balance_for_bets
    @starting_balance = 100
    @bet = 10
  #needs to place $10 bet prior to receiving first two cards
  #player gets to keep playing as long as he has money
end

Class Dealer
  def the_dealer
    #aka the computer/the role the game emulates
  end
end


Class GameRules

  def how_dealer_wins
# In order to win the game, the dealer must do one of the following:
  # 1)	have a score of 21
  # 2)	have the highest score that is less than 21
  # 3)	the human player busts (the point value of his/her cards exceeds 21) and the dealer does not
  end

  def how_dealer_loses_aka_player_wins
# The dealer loses the game if:
  # 1)	the point value of the cards the dealer has exceeds 21 (busts), and the human does not
  # 2)	the dealer’s cards have a total point value of less than 21 AND the human players cards either add up to 21 or their     total point value is higher than that of the dealer’s cards
  end

  def nobody_wins_everybody_ties
# If the dealer and human end up having the same point value at the end of the game, a push (aka tie) is declared.
  end
end

Class IntialDeal
  # usually blackjack dealer is drawing from multiple decks, so I don't need to set a limit that once a card has been dealt the same type of card can't be drawn again).
  @bet = true
  puts "you have placed an initial bet of $10, and have $90 remaining."
  def deal_cards
  # Cards have already been shuffled (see above, so they should be ready to deal)
  # card_1 is dealt to the_player
  # card_2 is dealt to the_dealer
    # in real life it's face down, so player can't see it (so don't reveal what the card is to the player)
  # card_3 is dealt to the the_player
  # card_4 is dealt to the_dealer,
    # in real life, it's face up (so that both dealer and human player can see it). IN THE GAME: notify player what the dealer's card is
  end
  # card_1 and card_3 = @player_hand (I need to know both 1. what are the cards that they player received and 2. what do they add up to -> val_card_1 + val_card_3)

  # card_2 and card_4 = @dealer_hand (player)
  # ask player (if card_1 or card_3 type=A whether they want it to be worth 1 or 11)
    # do you want your ace to be worth 1 or 11?

  puts "The dealer has {card_4} and another card that's face-down. Once you make a decision to 'stand' or 'hit' you'll get to find out what this mystery card is."

  puts "Your cards are {card_1} and {card_3}. The value of these cards is {val_card1 + val_card3}. Remember that your goal is to reach (but not go over) 21 total points. Type 'stand' or 'hit', then press enter to continue."
  #downcase the user's response string.
  #turn the string into a variable, which then can be analyzed below and acted upon
end

#array if delete
#slot (for removing card from deck array so it can't be dealt again that game)

Class AfterDeal
  def player_looks_at_cards_this_always_happens
  # At this point, the human player will look at his/her cards, then make a decision as to whether to hit (take another card) or stay (stand pat/not take an additional card from the dealer. Human player will flip his/her cards over face up at this time.
  end

  def player_stand
    #if player response = 'stand'
  #if two cards (human stand)
    # Value of the two cards will be totaled. If 21, it’s a blackjack; if over 21 it’s a bust.
  end

  def player_hit
    #if player repsonse = 'hit'
    #has to place an additional $10 bet prior to receiving cards (@bet = true) puts "you have placed a bet of $10 and now have $80 remaining."
      #take card_5
      # add card_5 to player_hand, then total the point value of the three cards (modifying variable @player_hand). if the value of @player_hand > 21, it's a bust and the game of blackjack is over, with a string like "sorry, you busted. what a loser. literally."
      # if card_5 is an A, and (card_1 + card_3 + card_5) aka @player_hand > 21, reassign value of card_5 to 1
    # Value of the three cards will be totaled. If 21, it's a blackjack; if over 21 it's a bust.
  end

  def player_cant_follow_instructions
    #if player response isn't 'stand' or 'hit', then have the following print out:
    puts "I thought I was clear. You need to type either 'stand' or 'hit' to continue the game. These are your two choices, and your two choices are these. To avoid a good smiting I suggest you type 'stand' or 'hit', then press enter to continue. (Seriously, I don't want to smite you. But I will if you force my hand. Yes, that pun was intended. No, this is no laughing matter.)"

  def what_dealer_does
  # Now the dealer will show the as-to-this-point face down card.
    puts "The dealer also has {card 2}"
    #The dealer’s two cards are to be added up.
    # NOTE: If this point value is less than 17, then the dealer must take another card, which will be placed face-up with the dealer’s other two cards (and its point value added to that of the other two cards.)
  end
end

Class DetermineWinner

  def who_won
    # At this time, a determination is made based upon the aforementioned rules of the game as to whether the dealer/human has won the game or if a push has occurred.
    #CONTAINS A CALLBACK TO CLASS GAMERULES
  end

  #if player won, he gets $20 in chips,
  #and there's an announcement that he won $20, and now has a total of $120.


  def congratulate_or_taunt_human
    #if human won, congratulate them:
    puts "Congratulations! You won $20 dollars and now have $120."
    #if dealer won, taunt the human:
    puts "You lost! Sad for you :( You lost $20 dollars and now have $80"
end

Class NewGame

  def ask_human_if_they_want_to_play_again
    puts "Would you like to play again?
    If so, type in yes, then hit enter.
    If not, hit the enter key to exit." #similar to the code on how to end the change counting game. Figure this out and apply it here. (downcase the string, must = "yes" in order to start a new game)
      # If yes (another game is desired by the human; set loop to start the game over again. This will require collecting the cards and shuffling them again.)
      # If no, game will end (w/ exit command)
  end
end
