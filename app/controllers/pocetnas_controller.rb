class PocetnasController < ApplicationController
  before_action :set_pocetna, only: %i[ show edit update destroy ]

  # GET /pocetnas or /pocetnas.json
  def index
    @pocetnas = Pocetna.all
  end

  # GET /pocetnas/1 or /pocetnas/1.json
  def show
  end

  # GET /pocetnas/new
  def new
    @pocetna = Pocetna.new
  end

  # GET /pocetnas/1/edit
  def edit
  end

  # POST /pocetnas or /pocetnas.json
  def create
    @pocetna = Pocetna.new(pocetna_params)

    respond_to do |format|
      if @pocetna.save
        format.html { redirect_to @pocetna, notice: "Pocetna was successfully created." }
        format.json { render :show, status: :created, location: @pocetna }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pocetna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pocetnas/1 or /pocetnas/1.json
  def update
    respond_to do |format|
      if @pocetna.update(pocetna_params)
        format.html { redirect_to @pocetna, notice: "Pocetna was successfully updated." }
        format.json { render :show, status: :ok, location: @pocetna }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pocetna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pocetnas/1 or /pocetnas/1.json
  def destroy
    @pocetna.destroy
    respond_to do |format|
      format.html { redirect_to pocetnas_url, notice: "Pocetna was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocetna
      @pocetna = Pocetna.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pocetna_params
      params.fetch(:pocetna, {})
    end
end
