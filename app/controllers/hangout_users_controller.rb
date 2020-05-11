class HangoutUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hangout

  def create
    @hangout.hangout_users.where(user: current_user).first_or_create
    redirect_to @hangout
  end

  def destroy
    @hangout.hangout_users.where(user: current_user).destroy_all
    redirect_to @hangout
  end

  private

  def set_hangout
    @hangout = Hangout.find(params[:hangout_id])
  end
end
