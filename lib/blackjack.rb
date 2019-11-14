def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  cards = deal_card + deal_card
  return display_card_total(cards)
end

def hit?(h_or_s)
  # code hit? here
  #initial_round
  prompt_user
  k = get_user_input
  h_or_s
  while k
    if k == 's'
      return h_or_s
    elsif k == 'h'
      a = deal_card
      return h_or_s + a
    else
      puts "Please enter a valid command"
      prompt_user
      k = get_user_input
      return k
    end
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  game = display_card_total(hit?(initial_round))
  while game < 21
    game = display_card_total(hit?(initial_round))
  end
 end_game(game)
end
