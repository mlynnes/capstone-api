class CardsController < ProtectedController
  before_action :set_card, only: [:show, :update, :destroy]
  # GET /cards
  def index
    # add current user
    # @cards = Card.all
    @cards = current_user.cards.all

    render json: @cards
  end

  # GET /cards/1
  def show
    render json: @card
  end

  # POST /cards
  def create
    # @card = Card.new(card_params)
    @card = current_user.cards.build(card_params)

    if @card.save
      render json: @card, status: :created, location: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards/1
  def update
    if @card.update(card_params)
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_card
    # @card = Card.find(params[:id])
    @card = current_user.cards.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def card_params
    params.require(:card).permit(:website, :email, :password)
  end
end
