class AlpacasController < ApplicationController
  def index
    @alpacas = Alpaca.all
  end

  def show
    @alpaca = Alpaca.find(params[:id])
  end

  def new
    @alpaca = Alpaca.new
  end

  def create
    @alpaca = Alpaca.new(alpaca_params)
    if @alpaca.save
      redirect_to alpacas_path(@alpaca)
    else
      render :new
    end
  end

  def edit
    @alpaca = Alpaca.find(params[:id])
  end

  def update
    @alpaca = Alpaca.find(params[:id])
    @alpaca.update(alpaca_params)
    redirect_to @alpaca
  end

  def destroy
    @alpaca = Alpaca.find(params[:id])
    @alpaca.destroy
    redirect_to alpacas_path
  end

  private

  def alpaca_params
    params.require(:alpaca).permit(:name, :age, :address, :color, :craziness_level, :price, :user_id)
  end
end
