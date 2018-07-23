class CardsController < ApplicationController
  layout "cards"

  def index
    @card = Card.all 
  end

  def show
    @card = Card.find(params[:id])
  end

  def add
    if request.post? then
      Card.create(card_params)
      goback
    else
      @card = Card.new
    end
  end

  def edit
    @card = Card.find(params[:id])
    if request.patch? then
      @card.update(card_params)
      goback
    end
  end
  
  def delete
    Card.find(params[:id]).destroy
    goback
  end

  def find
    @msg = "Please type search word..."
    @card = Array.new
    if request.post? then
      f = params[:find].split(',')
      @card = Card.all.limit(f[0]).offset(f[1]) #limit=いくつ取り出す offset=いくつ飛ばす
    else
      @card = Card.all
    end
  end


  private
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :memo)
  end

  private
  def goback
    redirect_to '/cards'
  end

end
