class Player
  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def name
    @name
  end

  def deck
    @deck
  end

  def has_lost?
    @deck.cards.empty?
  end

  #read the comment on this method in card.rb
  # I need to test if to Player objects are equal.
  def ==(other)
    if other.nil? || !other.instance_of?(Player)
      false
    else
      @name == other.name
    end
  end
end
