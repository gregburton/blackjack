require 'pry'

class Deck
  attr_accessor :deck

  def initialize(new_decks)
    @deck = []
    @ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    @suits = %w(Hearts Spades Diamonds Clubs)

    new_decks.times do
      @ranks.each do |rank|
        @suits.each do |suit|
          @deck << Card.new(rank,suit)
        end
      end
    end
  end
end

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

class Hand
  attr_accessor :hand, :card_points

  def initialize
    @hand = []
  end

  def card_points
    points = 0
    if @rank == "J" || @rank == "Q" || @rank == "K"
      points += 10
    elsif @rank == "A"
      points += 1,11
    else
      points += @rank
    end
  end
end  

class Game
  def intialize
    @deck = Deck.new
    @deck.shuffle
    @pot = Pot.new
    @bet = 10
  end

  def determine_pot_balance
    @pot = pot
    @initial_balance = initial_balance
    initial_balance = "100".to_i
    bet = "10".to_i
    pot = (initial_balance - bet)
    if @bet > @pot.balance
      puts "Your pot is empty, so you can't place a bet. Game over!"
    end
  end

  def deal_cards
    @player_card_1 = @deck.pop
    @dealer_card_1 = @deck.pop
    # in real life the dealer's first card is face down, so player can't see it (so don't immediately reveal what the card is to the player)
    @player_card_2 = @deck.pop
    @dealer_card_2 = @deck.pop
    # in real life, the dealer's second card is face up (so that both dealer and human player can see it). IN THE GAME: notify player what the dealer's card is
  end

#make each hand an empty array initially
#that you then fill with two cards,
#and then additional cards if necessary

  def merge_cards_to_hands
    @player_hand = []
     [@player_card_1 + @player_card_2 + n]
    @dealer_hand = [@dealer_card_1 + @dealer_card_2 + n]
  end

  def valuing_ace
    if @player_hand || @dealer_hand < 11
      #some code to change value of "A" = 11
    end
    #but what happens if you get dealt two Aces? do both aces have to equal the same thing?
  end

  def determine_hand_points #AKA adding the cards together (calls upon the valuing_ace method)
    #not sure how I would be able to get valuations assigned to cards. This is an attempt of demonstrating how if I can get these valuations, that they could be added together using an array
    @player_hand_points = [val_player_card_1, val_player_card_2]
    @player_hand_points.inject{|sum,x| sum + x }

    @dealer_hand_points = [val_dealer_card_1, val_dealer_card_2]
    @dealer_hand_points.inject{|sum,y| sum + y }
  end

  def first_check_for_blackjack
    if @player_hand_points = 21 || @dealer_hand_points
      puts "You have blackjack. Congratulations!"
        #skip over other steps to add winnings to pot and then ask if a new game is desired
    elsif @player_hand_points = 21 && @dealer_hand_points = 21
      puts "Both you and the dealer have 21. A push (tie) has occurred."
    end
  end

  def notify_player_after_dealing
    puts "Your cards are the #{player_card_1} and the #{player_card_2}. The value of your hand is #{dont have the code figured out to get hand valuation} "
    puts "The dealer has #{dealer_card_2} and another card that's face-down. Once you make a decision to (s)tand or (h)it you'll get to find out what this mystery card is."
    @player_response = gets.chomp.downcase!
      if @player_response == "s"
        #don't do anything else
      if @player_response == "h"
        @player_card_3 = @deck.pop
        puts "The dealer also has #{dealer_card_1}."
      end
  end

  def determine_if_dealer_hits
    hit = deck.pop
    deck.pop = @dealer_card_3
    if @dealer_hand_points < 17 == hit
      #and then add value of @dealer_card_3 to @dealer_hand_points
      #and inject @dealer_hand with third card
      puts "The dealer also has #{dealer_card_3}"
    end
  end

  def if_player_hits
    @player_hand_points = "#{player_card1}, #{player_card2}, #{player_card3}].inject {|sum, n| sum + n }"
    if @player_hand_points > 21
      puts "Bust. Game over." #and then needs to call up class NewGame
    elsif @player_hand_points < 21
    end
  end

    #player could potentially hit again to receive a fourth card, so should allow for that possibility

  def determining_winner
    @player_win
      if @player_hand_points = 21 && @dealer_hand_points < 21 || 21 > @player_hand_points > @dealer_hand_points || @dealer_hand_points > 21
      end
    @player_tie
      if @player_hand_points > 21 && @dealer_hand_points > 21 || @player_hand_points = @dealer_hand_points
      end
    @player_loss
      if @dealer_hand_points = 21 && @player_hand_points < 21 || 21 > @dealer_hand_points > @player_hand_points || @player_hand_points > 21
      end
  end

  def update_pot_based_on_winner
    if @player_win
      @ending_pot = pot + bet + 15
      puts "Congratulations! You won $15 dollars!"
      #if player loses, pot stays the same. there needs to be a way to carry over this balance to the next game (if another game is desired)
    elsif @player_tie
      @ending_pot = pot + bet #returns bet $ to player
      puts "You tied. Not bad. Not great, either...but not bad."
    else @dealer_win
      @ending_pot = pot - bet
      puts "You lost! Sad for you :( You lost $10 dollars."
    end
  end
end

class NewGame
  def ask_for_new_game
    puts "Would you like to play again? (Y)es or (n)o?"
    new_game_response = gets.chomp.downcase!
    if new_game_response == "y"
      Cards.new
      #set loop to start the game over again. This will require collecting the cards and shuffling them again.)
    # if new_game_response == "n"
    #   exit
    else 
      "Please specify (y)es or (n)o."
    end
  end
end
