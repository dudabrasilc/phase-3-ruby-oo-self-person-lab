# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    if (0..10) === value
      @happiness = value
    elsif value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    end
  end

  def hygiene=(value)
    if (0..10) === value
      @hygiene = value
    elsif value > 10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    end
  end

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(amount)
    self.bank_account = amount + self.bank_account
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end



end


p1 = Person.new("Maria")
p2 = Person.new("Vlad")

binding.pry