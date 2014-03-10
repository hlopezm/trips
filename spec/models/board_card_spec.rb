require 'spec_helper'

describe BoardCard do
  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        board_card = BoardCard.new(origin: "Madrid", destination: "Barcelona")

        board_card.should be_valid
      end

    end

    context "invalid attributes" do

      it "should not be valid" do
        board_card = BoardCard.new(origin: "", destination: "")

        board_card.should_not be_valid
      end

    end
  end 

end
