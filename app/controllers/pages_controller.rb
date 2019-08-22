class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @alpacas = Alpaca.all
  end

  def dashboard
    @booking = Booking.where(user_id: current_user.id)
    @alpacas = current_user.alpacas
  end
end
