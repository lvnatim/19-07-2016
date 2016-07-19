#EVALUATE -- takes commands and processes dog response
def dog_response(command)
  case true
  when command.include?('shakil stop') || command.include?('treat'); '...'
  when command == 'woof'; 'WOOF ' * 3
  when command == 'meow'; 'woof ' * 5
  when command != 'go away'; 'woof'
  end
end

#READ -- reads user input and processes it for EVAL
def shakil_response
  begin
    print 'Shakil awaits your response: '; input = gets.strip.downcase
    puts dog_response(input)
  end while input != 'go away'
  puts 'Shakil has gone away'
end

shakil_response
