class AlpacasController < ApplicationController
  def index
    # @alpacas = Alpaca.all
    @alpacas = policy_scope(Alpaca).geocoded

    @markers = @alpacas.map do |alpaca|
      {
        lat: alpaca.latitude,
        lng: alpaca.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { alpaca: alpaca })
      }
    end
  end

  def show
    @alpaca = Alpaca.find(params[:id])
    authorize @alpaca
    @marker = @alpaca

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
      redirect_to alpaca_path(@alpaca)
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
    redirect_to alpacas_path
  end

  private

  def alpaca_params
    params.require(:alpaca).permit(:name, :age, :address, :color, :craziness_level, :price, :photo, :description)
  end
end
