class HangoutsController < ApplicationController
  layout 'hangout'
  before_action :authenticate_user!
  before_action :set_hangout, only: [:show, :edit, :update, :destroy]

  # GET /hangouts
  # GET /hangouts.json
  def index
    @hangouts = Hangout.all
  end

  # GET /hangouts/1
  # GET /hangouts/1.json
  def show
    @messages = @hangout.messages.order(created_at: :desc).limit(10).reverse
  end

  # GET /hangouts/new
  def new
    @hangout = Hangout.new
  end

  # GET /hangouts/1/edit
  def edit
  end

  # POST /hangouts
  # POST /hangouts.json
  def create
    @hangout = Hangout.new(hangout_params)

    respond_to do |format|
      if @hangout.save
        format.html { redirect_to hangouts_url, notice: 'Hangout was successfully created.' }
        format.json { render :show, status: :created, location: @hangout }
      else
        format.html { render :new }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hangouts/1
  # PATCH/PUT /hangouts/1.json
  def update
    respond_to do |format|
      if @hangout.update(hangout_params)
        format.html { redirect_to hangouts_url, notice: 'Hangout was successfully updated.' }
        format.json { render :show, status: :ok, location: @hangout }
      else
        format.html { render :edit }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hangouts/1
  # DELETE /hangouts/1.json
  def destroy
    @hangout.destroy
    respond_to do |format|
      format.html { redirect_to hangouts_url, notice: 'Hangout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_hangout
    @hangout = Hangout.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def hangout_params
    params.require(:hangout).permit(:name)
  end
end
