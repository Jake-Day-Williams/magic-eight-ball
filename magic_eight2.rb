answers = ["Most likely.", "I doubt it.", "I don't know."]
malable_answers = answers.clone

real  = lambda {
  puts malable_answers.sample
}
  
add = lambda {
    puts "Write the answer you would you would like to add."
    new = gets.strip
    if malable_answers.map(&:downcase).include?(new)
      puts "That's already an answer."
    else
     malable_answers << new
    puts "Your answer has been added."
    end
}

print_answers = lambda {
  puts malable_answers
}

start = lambda { 
puts "Ask me a question. I will answer."
question = gets.strip.downcase
if question == "quit"
  puts "Goodbye"
  exit
elsif question == "add_answers"
  add.call  
elsif question == "reset_answers"
  malable_answers = answers.clone
   puts "Your answers have been reset."
elsif question == "print_answers"
  print_answers.call
else real.call
end
}

while true
start.call 
end