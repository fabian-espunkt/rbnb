class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @alpacas = Alpaca.all
    # @alpacas = current_user.alpacas
  end

  def dashboard
    @alpacas = current_user.alpacas
    @booking = Booking.where(user_id: current_user.id)
  end
end
