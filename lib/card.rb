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

   def ==(other)
     if other.nil? || !other.instance_of?(Card)
       false
     else
       @suit == other.suit && @value == other.value && @rank == other.rank
     end
   end
 end
