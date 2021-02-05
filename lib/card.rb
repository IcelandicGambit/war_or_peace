class Card
  def initialize(suit, value, rank)
    @suit = suit
    @value = value
    @rank = rank
  end
  def suit
    @suit
  end
  def value
    @value
  end
  def rank
    @rank
  end


  #I had to write this to get assert_equals in test_pile_cards to work correctly
   # Basically this method defines how to tell if two Card objects are equal (they
   # have the same suit, value and rank) which is
   # what is implicitly used in assert_equal [card1,card3], turn.spoils_of_war (line 91 of turn_test.rb)
   def ==(other)
     if other.nil? || !other.instance_of?(Card)
       false
     else
       @suit == other.suit && @value == other.value && @rank == other.rank
     end
   end
 end
