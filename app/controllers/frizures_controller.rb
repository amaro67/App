class FrizuresController < ApplicationController
  before_action :set_frizure, only: %i[ show edit update destroy ]

  # GET /frizures or /frizures.json
  def index
    @frizures = Frizure.all
  end

  # GET /frizures/1 or /frizures/1.json
  def show
  end

  # GET /frizures/new
  def new
    @frizure = Frizure.new
  end

  # GET /frizures/1/edit
  def edit
  end

  # POST /frizures or /frizures.json
  def create
    @frizure = Frizure.new(frizure_params)

    respond_to do |format|
      if @frizure.save
        format.html { redirect_to @frizure, notice: "Frizure was successfully created." }
        format.json { render :show, status: :created, location: @frizure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frizure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frizures/1 or /frizures/1.json
  def update
    respond_to do |format|
      if @frizure.update(frizure_params)
        format.html { redirect_to @frizure, notice: "Frizure was successfully updated." }
        format.json { render :show, status: :ok, location: @frizure }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frizure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frizures/1 or /frizures/1.json
  def destroy
    @frizure.destroy
    respond_to do |format|
      format.html { redirect_to frizures_url, notice: "Frizure was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frizure
      @frizure = Frizure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frizure_params
      params.require(:frizure).permit(:tip, :cijena, :opis)
    end
end
