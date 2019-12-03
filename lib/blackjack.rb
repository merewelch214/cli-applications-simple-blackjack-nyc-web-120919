def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_total)
  sum = 0
  prompt_user
  input = get_user_input
  if input == 'h' 
    final = current_total + deal_card
    return final
  elsif input == 's'
    return current_total
  else
    invalid_command
    prompt_user
    input = get_user_input
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_total = initial_round # prints and returns sum of two cards
  curr_total = hit?(initial_total)
  display_card_total(curr_total)
  until curr_total > 21
    hit?(curr_total)
    curr_total = hit?(curr_total)
    display_card_total(curr_total)
  end
  end_game(curr_total)
end
    
