# frozen_string_literal: true

class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.
    $game_end = false

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passageOfTime
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passageOfTime
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      passageOfTime if @asleep
      puts "#{@name} snores, filling the room with smoke." if @asleep
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly.positive?
      # Move food from belly to intestine.
      @stuff_in_belly     -= 1
      @stuff_in_intestine += 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving!  In desperation, he ate YOU!"
      exit  # This quits the program.
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops!  #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

puts 'What would you like to call your dragon?'
dragon = Dragon.new(gets.chomp)

while $game_end == false

  puts "
  What would you like to do with your dragon?
  Feed
  Walk
  Put to bed
  Toss
  Rock
  Exit game"
  action = gets.chomp

  case action
  when 'feed'
    dragon.feed
  when 'walk'
    dragon.walk
  when 'put to bed'
    dragon.putToBed
  when 'toss'
    dragon.toss
  when 'rock'
    dragon.rock
  when 'exit'
    $game_end = true
  else
    puts "You can't do that"
  end
end
