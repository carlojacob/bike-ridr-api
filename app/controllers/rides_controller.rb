# frozen_string_literal: true

class RidesController < ProtectedController
  before_action :set_ride, only: %i[show update destroy]

  # GET /rides
  def index
    # @rides = Ride.all
    @rides = current_user.rides.all

    render json: @rides
  end

  # GET /rides/1
  def show
    render json: @ride
  end

  # POST /rides
  def create
    # @ride = Ride.new(ride_params)
    @ride = current_user.rides.build(ride_params)

    if @ride.save
      render json: @ride, status: :created, location: @ride
    else
      render json: @ride.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rides/1
  def update
    if @ride.update(ride_params)
      render json: @ride
    else
      render json: @ride.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rides/1
  def destroy
    @ride.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ride
    # @ride = Ride.find(params[:id])
    @ride = current_user.rides.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ride_params
    params.require(:ride).permit(:date, :location, :ride_time, :ride_distance, :user_id)
  end
end
