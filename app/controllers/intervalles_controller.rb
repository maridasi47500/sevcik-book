class IntervallesController < ApplicationController
  before_action :set_intervalle, only: %i[ show edit update destroy ]

  # GET /intervalles or /intervalles.json
  def index
    @intervalles = Intervalle.all
  end

  # GET /intervalles/1 or /intervalles/1.json
  def show
  end

  # GET /intervalles/new
  def new
    @intervalle = Intervalle.new
  end

  # GET /intervalles/1/edit
  def edit
  end

  # POST /intervalles or /intervalles.json
  def create
    @intervalle = Intervalle.new(intervalle_params)

    respond_to do |format|
      if @intervalle.save
        format.html { redirect_to @intervalle, notice: "Intervalle was successfully created." }
        format.json { render :show, status: :created, location: @intervalle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intervalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intervalles/1 or /intervalles/1.json
  def update
    respond_to do |format|
      if @intervalle.update(intervalle_params)
        format.html { redirect_to @intervalle, notice: "Intervalle was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @intervalle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intervalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intervalles/1 or /intervalles/1.json
  def destroy
    @intervalle.destroy!

    respond_to do |format|
      format.html { redirect_to intervalles_path, notice: "Intervalle was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervalle
      @intervalle = Intervalle.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def intervalle_params
      params.expect(intervalle: [ :name ])
    end
end
