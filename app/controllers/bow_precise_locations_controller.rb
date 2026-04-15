class BowPreciseLocationsController < ApplicationController
  before_action :set_bow_precise_location, only: %i[ show edit update destroy ]

  # GET /bow_precise_locations or /bow_precise_locations.json
  def index
    @bow_precise_locations = BowPreciseLocation.all
  end

  # GET /bow_precise_locations/1 or /bow_precise_locations/1.json
  def show
  end

  # GET /bow_precise_locations/new
  def new
    @bow_precise_location = BowPreciseLocation.new
  end

  # GET /bow_precise_locations/1/edit
  def edit
  end

  # POST /bow_precise_locations or /bow_precise_locations.json
  def create
    @bow_precise_location = BowPreciseLocation.new(bow_precise_location_params)

    respond_to do |format|
      if @bow_precise_location.save
        format.html { redirect_to @bow_precise_location, notice: "Bow precise location was successfully created." }
        format.json { render :show, status: :created, location: @bow_precise_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bow_precise_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bow_precise_locations/1 or /bow_precise_locations/1.json
  def update
    respond_to do |format|
      if @bow_precise_location.update(bow_precise_location_params)
        format.html { redirect_to @bow_precise_location, notice: "Bow precise location was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @bow_precise_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bow_precise_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bow_precise_locations/1 or /bow_precise_locations/1.json
  def destroy
    @bow_precise_location.destroy!

    respond_to do |format|
      format.html { redirect_to bow_precise_locations_path, notice: "Bow precise location was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow_precise_location
      @bow_precise_location = BowPreciseLocation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bow_precise_location_params
      params.expect(bow_precise_location: [ :name ])
    end
end
