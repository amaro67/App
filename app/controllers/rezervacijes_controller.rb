class RezervacijesController < ApplicationController
  before_action :set_rezervacije, only: %i[ show edit update destroy ]

  # GET /rezervacijes or /rezervacijes.json
  def index
    @rezervacijes = Rezervacije.all
  end

  # GET /rezervacijes/1 or /rezervacijes/1.json
  def show
  end

  # GET /rezervacijes/new
  def new
    @rezervacije = Rezervacije.new
  end

  # GET /rezervacijes/1/edit
  def edit
  end

  # POST /rezervacijes or /rezervacijes.json
  def create
    @rezervacije = Rezervacije.new(rezervacije_params)

    respond_to do |format|
      if @rezervacije.save
        format.html { redirect_to @rezervacije, notice: "Rezervacije was successfully created." }
        format.json { render :show, status: :created, location: @rezervacije }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rezervacije.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rezervacijes/1 or /rezervacijes/1.json
  def update
    respond_to do |format|
      if @rezervacije.update(rezervacije_params)
        format.html { redirect_to @rezervacije, notice: "Rezervacije was successfully updated." }
        format.json { render :show, status: :ok, location: @rezervacije }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rezervacije.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rezervacijes/1 or /rezervacijes/1.json
  def destroy
    @rezervacije.destroy
    respond_to do |format|
      format.html { redirect_to rezervacijes_url, notice: "Rezervacije was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rezervacije
      @rezervacije = Rezervacije.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rezervacije_params
      params.require(:rezervacije).permit(:klijent, :frizura, :datum)
    end
end
