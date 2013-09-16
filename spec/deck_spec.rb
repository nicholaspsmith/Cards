require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../deck'

describe Deck do 
	let(:deck) { Deck.new}

  describe '.initialize' do
    it "creates a complete deck of 52 cards" do

      ['diamonds', 'clubs', 'hearts', 'spades'].each do |suit|
        ['2', '3', '4', '5' , '6', '7', '8', '9' , '10', 'Jack', 'Queen', 'King', 'Ace'].each do |num|
          expect(deck.cards.include?(num + " of " + suit)).to eq(true)
        end
      end
    end
  end

  describe "#shuffle" do
    it "shuffles the order of the cards" do
      deck1 = Deck.new
      deck2 = Deck.new

      expect(deck1.cards == deck2.cards).to eq(true)

      deck1.shuffle

      expect(deck1.cards == deck2.cards).to eq(false)
    end
  end
end