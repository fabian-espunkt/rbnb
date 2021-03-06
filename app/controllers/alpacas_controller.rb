class AlpacasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    # @alpacas = Alpaca.all
    if params[:query].present?
      @alpacas = Alpaca.near(params[:query], 10)
      if @alpacas.empty?
        policy_scope(@alpacas)
      else
        @markers = @alpacas.map do |alpaca|
          {
            lat: alpaca.latitude,
            lng: alpaca.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { alpaca: alpaca })
          }
        end
        policy_scope(@alpacas)
      end
    else
      @alpacas = policy_scope(Alpaca).geocoded

      @markers = @alpacas.map do |alpaca|
        {
          lat: alpaca.latitude,
          lng: alpaca.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { alpaca: alpaca })
        }
      end
    end
  end

  def show
    @alpaca = Alpaca.find(params[:id])
    authorize @alpaca
    @booking = Booking.new
    @marker = @alpaca
    @markers = [{ lat: @alpaca.latitude, lng: @alpaca.longitude }]
  end

  def new
    @alpaca = Alpaca.new
    authorize @alpaca
  end

  def create
    @alpaca = Alpaca.new(alpaca_params)
    @alpaca.user = current_user
    authorize @alpaca
    if @alpaca.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @alpaca = Alpaca.find(params[:id])
    authorize @alpaca
  end

  def update
    @alpaca = Alpaca.find(params[:id])
    authorize @alpaca
    @alpaca.update(alpaca_params)
    redirect_to @alpaca
  end

  def destroy
    @alpaca = Alpaca.find(params[:id])
    authorize @alpaca
    @alpaca.destroy
    redirect_to dashboard_path
  end

  private

  def alpaca_params
    params.require(:alpaca).permit(:name, :age, :address, :color, :craziness_level, :price, :photo, :description)
  end
end
