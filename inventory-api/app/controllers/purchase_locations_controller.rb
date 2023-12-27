class PurchaseLocationsController < ApplicationController
  before_action :set_purchase_location, only: [:show, :update, :destroy]

  # GET /purchase_locations
  def index
    @purchase_locations = PurchaseLocation.all

    render json: @purchase_locations
  end

  # GET /purchase_locations/1
  def show
    render json: @purchase_location
  end

  # POST /purchase_locations
  def create
    @purchase_location = PurchaseLocation.new(purchase_location_params)

    if @purchase_location.save
      render json: @purchase_location, status: :created, location: @purchase_location
    else
      render json: @purchase_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purchase_locations/1
  def update
    if @purchase_location.update(purchase_location_params)
      render json: @purchase_location
    else
      render json: @purchase_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purchase_locations/1
  def destroy
    @purchase_location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_location
      @purchase_location = PurchaseLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_location_params
      params.require(:purchase_location).permit(:id, :location_name)
    end
end
