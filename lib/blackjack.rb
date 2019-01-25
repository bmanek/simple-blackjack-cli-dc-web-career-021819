require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card(card = 0)
  new_card = rand(1..11)
  card += new_card
  return card
end


def display_card_total(card)
  puts "Your cards add up to #{card}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  decision = gets
end


def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end


def initial_round
  first_hand = deal_card(deal_card)
  display_card_total(first_hand)
end


def hit?(current_card_total)
  prompt_user
  get_user_input
    if decision == "s"
      display_card_total
    elsif decision == "h"
      deal_card
  #   display_card_total(?)
    else
      invalid_command
    end
  display_card_total
end
      

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
