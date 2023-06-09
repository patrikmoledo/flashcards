class CardsController < ApplicationController
  def index
    @deck = Deck.find(params[:deck_id])
    @cards = @deck.cards
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @deck = Deck.find(params[:deck_id])
    @card = Card.new
  end

  def create
    @deck = Deck.find(params[:deck_id])
    @card = Card.new(card_params)
    @card.deck = @deck

    if @card.save
      redirect_to deck_path(@deck)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
    if @card.update(card_params)
      redirect_to deck_card_path(@deck, @card)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @deck = @card.deck
    @card.destroy
    redirect_to deck_cards_path(@deck)
  end

  private

  def card_params
    params.require(:card).permit(:front, :back)
  end
end
