
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'


class PlayerTest < Minitest::Test

  def setup
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    @deck = Deck.new([card1, card2, card3])
    @player = Player.new('Clarissa', deck)
  end

  def test_it_exists
    assert_instance_of Player, @player
  end

  def test_it_has_a_name
    assert_equal 'Clarisa', @player.name
  end

  def test_it_has_a_deck
    assert_equal @deck, @player.deck
  end
end
