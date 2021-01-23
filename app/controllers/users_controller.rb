class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @rooms = @user.rooms

    # Display all the guest reviews to host (if this user is host)
    @guest_reviews = Review.where(type: "GuestReview", host_id: @user.id)
    p "NHI TEST"
    p @guest_reviews
    p "NHI TEST"
    # Display all the host reviews to host (if this user is guest)
    @host_reviews = Review.where(type: "HostReview", guest_id: @user.id)
  end
end
