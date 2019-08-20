class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @alpaca = Alpaca.find(params[:alpaca_id])
  end

  def create
    @booking = Booking.new
    @alpaca = Alpaca.find(params[:alpaca_id])
    @booking.user = current_user
    @booking.alpaca = @alpaca

    # raise
    # review_id = 1
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
  end
end
