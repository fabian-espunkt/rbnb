class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :alpaca
  belongs_to :review
end
