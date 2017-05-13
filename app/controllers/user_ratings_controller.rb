class UserRatingsController <  OpenReadController
  before_action :set_user_rating, only: [ :update, :destroy]
  before_action :set_rating_id, only: [:findalbumrating]

  # GET /user_ratings
  def index

    @user_ratings = UserRating.all

    render json: @user_ratings
  end

  # GET /user_ratings/1
  # def show
  #   render json: @record_id
  # end
  # GET /user_ratings

  def findalbumrating
    render json: @record_id
  end

  def my_ratings

    @user_ratings = current_user.user_ratings.all

    render json: @user_ratings
  end

  # POST /user_ratings
  def create
    @user_rating = current_user.user_ratings.build(user_rating_params)

    if @user_rating.save
      render json: @user_rating, status: :created
    else
      render json: @user_rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_ratings/1
  def update
    if @user_rating.update(user_rating_params)
      head :no_content
    else
      p @user_ratings
      p @user_rating
      render json: @user_rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_ratings/1
  def destroy
    @user_rating.destroy
    head :no_content
  end

  def test
    render json: current_user
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user_rating
      @user_rating = current_user.user_ratings.find(params[:id])
    end

    def set_rating_id
      @record_id = current_user.user_ratings.where(
      "album_id=?",params[:albumid])
    end

      # Only allow a trusted parameter "white list" through.
    def user_rating_params
      params.require(:user_rating).permit(:user_id, :album_id, :ratings, :comment, :status)
    end
end
