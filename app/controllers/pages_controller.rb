class PagesController < ApplicationController
  def home
    # @spaceships = Spaceship.where(hotdeal: true) # need to create a new column in Spaceships
    @spaceships = Spaceship.where(hotdeal: true)
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end


end
