require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

def build_cards
  card1 = Card.new(:diamond, 'Queen', 12)
  card2 = Card.new(:spade, '3', 3)
  card3 = Card.new(:heart, 'Ace', 14)
  cards = [card1, card2, card3]
  cards
end

def build_deck
  cards = build_cards
  Deck.new(cards)
end

class DeckTest < Minitest::Test

  def setup
    deck = build_deck
  end

  def test_it_exists
    deck = build_deck
    assert_instance_of Deck, deck
  end
  def test_rank
    deck = build_deck
    assert_equal 12,deck.rank_of_card_at(0)
  end

  def test_high_cards
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    high_cards = deck.high_ranking_cards
    assert_equal 2, high_cards.length
    assert_includes(high_cards,card1)
    assert_includes(high_cards,card3)
  end

  def test_percent_high_cards
    deck = build_deck
    assert_equal(2/3,deck.percent_high_ranking)
  end
end
