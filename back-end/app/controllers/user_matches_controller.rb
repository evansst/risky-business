class UserMatchesController < ApplicationController
  def index
    @user_matches = UserMatch.all

    render json: @user_matches
  end

  def show
    @user_match = UserMatch.find(params[:id])

    render json: @user_match
  end

  def create
    @user_match = UserMatch.create(
      user_id: params[:user_id],
      match_id: params[:match_id]
    )

    render json: @user_match
  end

  def destroy
    @user_match = UserMatch.find(params[:id])
    @user_match.destroy

    render json: 'Match deleted'
  end
end
