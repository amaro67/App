class KalendarsController < ApplicationController
  before_action :set_kalendar, only: %i[ show edit update destroy ]

  # GET /kalendars or /kalendars.json
  def index
    @kalendars = Kalendar.all
  end

  # GET /kalendars/1 or /kalendars/1.json
  def show
  end

  # GET /kalendars/new
  def new
    @kalendar = Kalendar.new
  end

  # GET /kalendars/1/edit
  def edit
  end

  # POST /kalendars or /kalendars.json
  def create
    @kalendar = Kalendar.new(kalendar_params)

    respond_to do |format|
      if @kalendar.save
        format.html { redirect_to @kalendar, notice: "Kalendar was successfully created." }
        format.json { render :show, status: :created, location: @kalendar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kalendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kalendars/1 or /kalendars/1.json
  def update
    respond_to do |format|
      if @kalendar.update(kalendar_params)
        format.html { redirect_to @kalendar, notice: "Kalendar was successfully updated." }
        format.json { render :show, status: :ok, location: @kalendar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kalendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kalendars/1 or /kalendars/1.json
  def destroy
    @kalendar.destroy
    respond_to do |format|
      format.html { redirect_to kalendars_url, notice: "Kalendar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kalendar
      @kalendar = Kalendar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kalendar_params
      params.fetch(:kalendar, {})
    end
end
