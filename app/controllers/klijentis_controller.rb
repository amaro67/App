class KlijentisController < ApplicationController
  before_action :set_klijenti, only: %i[ show edit update destroy ]

  # GET /klijentis or /klijentis.json
  def index
    @klijentis = Klijenti.all
  end

  # GET /klijentis/1 or /klijentis/1.json
  def show
  end

  # GET /klijentis/new
  def new
    @klijenti = Klijenti.new
  end

  # GET /klijentis/1/edit
  def edit
  end

  # POST /klijentis or /klijentis.json
  def create
    @klijenti = Klijenti.new(klijenti_params)

    respond_to do |format|
      if @klijenti.save
        format.html { redirect_to @klijenti, notice: "Klijenti was successfully created." }
        format.json { render :show, status: :created, location: @klijenti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @klijenti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klijentis/1 or /klijentis/1.json
  def update
    respond_to do |format|
      if @klijenti.update(klijenti_params)
        format.html { redirect_to @klijenti, notice: "Klijenti was successfully updated." }
        format.json { render :show, status: :ok, location: @klijenti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @klijenti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klijentis/1 or /klijentis/1.json
  def destroy
    @klijenti.destroy
    respond_to do |format|
      format.html { redirect_to klijentis_url, notice: "Klijenti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klijenti
      @klijenti = Klijenti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def klijenti_params
      params.require(:klijenti).permit(:ime, :prezime, :broj)
    end
end
