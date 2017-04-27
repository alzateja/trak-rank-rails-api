class UserRatingsController < ApplicationController
  before_action :set_user_rating, only: [:show, :update, :destroy]

  # GET /user_ratings
  def index
    @user_ratings = UserRating.all

    render json: @user_ratings
  end

  # GET /user_ratings/1
  def show
    render json: @user_rating
  end

  # POST /user_ratings
  def create
    @user_rating = UserRating.new(user_rating_params)

    if @user_rating.save
      render json: @user_rating, status: :created, location: @user_rating
    else
      render json: @user_rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_ratings/1
  def update
    if @user_rating.update(user_rating_params)
      head :no_content
    else
      render json: @user_rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_ratings/1
  def destroy
    @user_rating.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_rating
      @user_rating = UserRating.find(params[:id])
    end

      # Only allow a trusted parameter "white list" through.
    def user_rating_params
        params.require(:user_rating).permit(:user_id, :album_id, :ratings, :comment, :status)
    end
end
