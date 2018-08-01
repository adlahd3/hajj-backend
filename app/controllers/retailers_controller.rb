class RetailersController < ApplicationController
  before_action :set_retailer, only: [:show, :update, :destroy]

  # GET /retailers
  def index
    @retailers = Retailer.all

    render json: @retailers
  end

  # GET /retailers/1
  def show
    render json: @retailer
  end

  # POST /retailers
  def create
    @retailer = Retailer.new(retailer_params)

    if @retailer.save
      render json: @retailer, status: :created, location: @retailer
    else
      render json: @retailer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /retailers/1
  def update
    if @retailer.update(retailer_params)
      render json: @retailer
    else
      render json: @retailer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /retailers/1
  def destroy
    @retailer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retailer
      @retailer = Retailer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def retailer_params
      params.require(:retailer).permit(:name, :cr)
    end
end
