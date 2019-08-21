class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @alpaca = Alpaca.find(params[:alpaca_id])
    authorize @alpaca
  end

  def create
    @booking = Booking.new
    @alpaca = Alpaca.find(params[:alpaca_id])
    authorize @alpaca
    @booking.user = current_user
    @booking.alpaca = @alpaca

    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
  end
end



  # def create
  #   @plant = Plant.find(params[:plant_id])
  #   @tags = Tag.find(params[:plant_tag][:tag])
  #   @tags.each do |tag|
  #     @plant_tag = PlantTag.new
  #     @plant_tag.plant = @plant
  #     @plant_tag.tag = tag
  #     @plant_tag.save
  #   end
  #   redirect_to garden_path(@plant.garden)
  # end
