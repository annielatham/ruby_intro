class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    my_birthday = Time.parse("January 12th, 1984")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday
    
    @your_output = seconds_since_i_was_born
    
    first = "Annie"
    last = "Latham"
    
    @first_then_last = first + " " + last
    @last_then_first = last + " " + first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    the_number = rand(100)
    
    if the_number < 25
      @your_output = "Rock ... tie!"
      elsif the_number > 75
      @your_output = "Paper ... win!"
    else 
      @your_output = "Scissors ... lose!"
    end
    
    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.
    
    our_numbers = [4, 10, 6]
    squared_numbers = []
    
    
    our_numbers.each do |num|
      square = num * num 
      squared_numbers.push(square)
    end

    @your_output = squared_numbers.sum

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    
    # Your code goes below.
    noremainder = []
    discard = []
    
    numbers.each do |num|
      if num % 3==0
      noremainder.push(num)
      elsif num % 5==0
      noremainder.push(num)
    else
      discard.push(num)
      end
    end
    
    
    @your_output = noremainder.sum
  
    render("programs/third_program.html.erb")
  end
end
