# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

class Deck
  def initialize(questions_and_answers)
    questions = questions_and_answers.keys
    @cards = []
    questions.each do |key|
      @cards << Card.new(key, questions_and_answers[key])
    end
  end

  def draw_card
    @cards.pop
  end

  def remaining_cards
    @cards.length
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

@correct_answers = 0
@half_correct_answers = 0

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
    @correct_answers += 1
  else
    puts "Incorrect! Try again."
    puts card.question
    user_answer = gets.chomp
    if user_answer.downcase == card.answer.downcase
      puts "Correct!"
      @half_correct_answers += 1
    else
      puts "Incorrect!"
    end
  end
end

if @correct_answers > 1 or @correct_answers == 0
  puts "You got #{@correct_answers} questions correct on your first try."
else
  puts "You got #{@correct_answers} question correct on your first try."
end

if @half_correct_answers > 1
  puts "You got #{@half_correct_answers} questions correct on your second try."
elsif @half_correct_answers > 0
  puts "You got #{@half_correct_answers} question correct on your second try."
end