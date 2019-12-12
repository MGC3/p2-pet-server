class WeightlogsController < ApplicationController
  before_action :set_weightlog, only: [:show, :update, :destroy]

  # GET /weightlogs
  def index
    @weightlogs = Weightlog.all

    render json: @weightlogs
  end

  # GET /weightlogs/1
  def show
    render json: @weightlog
  end

  # POST /weightlogs
  def create
    @weightlog = Weightlog.new(weightlog_params)

    if @weightlog.save
      render json: @weightlog, status: :created, location: @weightlog
    else
      render json: @weightlog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weightlogs/1
  def update
    if @weightlog.update(weightlog_params)
      render json: @weightlog
    else
      render json: @weightlog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weightlogs/1
  def destroy
    @weightlog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weightlog
      @weightlog = Weightlog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def weightlog_params
      params.require(:weightlog).permit(:weight, :date)
    end
end
