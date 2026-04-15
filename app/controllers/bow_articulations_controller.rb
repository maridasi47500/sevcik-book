class BowArticulationsController < ApplicationController
  before_action :set_bow_articulation, only: %i[ show edit update destroy ]

  # GET /bow_articulations or /bow_articulations.json
  def index
    @bow_articulations = BowArticulation.all
  end

  # GET /bow_articulations/1 or /bow_articulations/1.json
  def show
  end

  # GET /bow_articulations/new
  def new
    @bow_articulation = BowArticulation.new
  end

  # GET /bow_articulations/1/edit
  def edit
  end

  # POST /bow_articulations or /bow_articulations.json
  def create
    @bow_articulation = BowArticulation.new(bow_articulation_params)

    respond_to do |format|
      if @bow_articulation.save
        format.html { redirect_to @bow_articulation, notice: "Bow articulation was successfully created." }
        format.json { render :show, status: :created, location: @bow_articulation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bow_articulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bow_articulations/1 or /bow_articulations/1.json
  def update
    respond_to do |format|
      if @bow_articulation.update(bow_articulation_params)
        format.html { redirect_to @bow_articulation, notice: "Bow articulation was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @bow_articulation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bow_articulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bow_articulations/1 or /bow_articulations/1.json
  def destroy
    @bow_articulation.destroy!

    respond_to do |format|
      format.html { redirect_to bow_articulations_path, notice: "Bow articulation was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow_articulation
      @bow_articulation = BowArticulation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bow_articulation_params
      params.expect(bow_articulation: [ :name ])
    end
end
