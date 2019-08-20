class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  review_params.require(:booking).permit(:content, :stars)
end
