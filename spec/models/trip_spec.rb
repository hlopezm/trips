require 'spec_helper'

describe Trip do
 describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        trip = Trip.new(name: "Madrid Valencia")

        trip.should be_valid
      end

    end

    context "invalid attributes" do

      it "should not be valid" do
        trip = Trip.new(name: "")

        trip.should_not be_valid
      end

    end

  end 
end
