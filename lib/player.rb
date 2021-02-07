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

  
  def ==(other)
    if other.nil? || !other.instance_of?(Player)
      false
    else
      @name == other.name
    end
  end
end
