class ClubsController < ApplicationController
  before_action :find_club, only: [:show, :edit, :update, :destroy]

  def new
    @club = Club.new
  end

  def create
    @club = Club.create(new_club_params)
    if @club.valid?

      redirect_to club_path(@club)
    else
      flash[:error] = @club.errors.full_messages
      redirect_to new_seller_path
    end
  end

  private

  def new_club_params
    params.require(:club).permit(:name, :owner_id)
  end

  def find_club
    @club = Club.find(params[:id])
  end

end
