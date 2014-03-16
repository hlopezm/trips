class BoardCardsController < ApplicationController
  def init
    redirect_to board_cards_path
  end
  def index
    @board_cards = BoardCard.all
  end

  def new
    @board_card = BoardCard.new 
  end

  def show
    @board_card = BoardCard.find(params[:id])
  end

  def create
  @board_card= BoardCard.new(event_params)
  @board_card.save
  redirect_to board_cards_path
  end

  def edit
    @board_card = BoardCard.find(params[:id])
  end

  def update
    @board_card = BoardCard.find(params[:id])
    if @board_card.update_attributes(event_params)
      redirect_to board_card_path(@board_card)
    else
      render edit
    end
  end

  def destroy
    @board_card = BoardCard.find(params[:id])
    @board_card.destroy
    redirect_to board_cards_path
  end

  private
  def event_params
    params.require(:board_card).permit(:origin, :destination)
  end
end
