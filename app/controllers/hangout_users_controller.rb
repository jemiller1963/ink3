class HangoutUsersController < ApplicationController
  layout 'hangout'

  before_action :authenticate_user!
  before_action :set_hangout

  def create
    @hangout_user = @hangout.hangout_users.where(user_id: current_user.id).first_or_create
    redirect_to @hangout
  end

  def destroy
    # recommend indexes unique across 2 columns
    @hangout_user = @hangout.hangout_users.where(user_id: current_user.id).destroy_all
    redirect_to hangouts_path
  end

  private

  def set_hangout
    @hangout = Hangout.find(params[:hangout_id])
  end
end
