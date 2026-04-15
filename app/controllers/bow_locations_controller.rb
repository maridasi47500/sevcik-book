class BowLocationsController < ApplicationController
  before_action :set_bow_location, only: %i[ show edit update destroy ]

  # GET /bow_locations or /bow_locations.json
  def index
    @bow_locations = BowLocation.all
  end

  # GET /bow_locations/1 or /bow_locations/1.json
  def show
  end

  # GET /bow_locations/new
  def new
    @bow_location = BowLocation.new
  end

  # GET /bow_locations/1/edit
  def edit
  end

  # POST /bow_locations or /bow_locations.json
  def create
    @bow_location = BowLocation.new(bow_location_params)

    respond_to do |format|
      if @bow_location.save
        format.html { redirect_to @bow_location, notice: "Bow location was successfully created." }
        format.json { render :show, status: :created, location: @bow_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bow_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bow_locations/1 or /bow_locations/1.json
  def update
    respond_to do |format|
      if @bow_location.update(bow_location_params)
        format.html { redirect_to @bow_location, notice: "Bow location was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @bow_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bow_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bow_locations/1 or /bow_locations/1.json
  def destroy
    @bow_location.destroy!

    respond_to do |format|
      format.html { redirect_to bow_locations_path, notice: "Bow location was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow_location
      @bow_location = BowLocation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bow_location_params
      params.expect(bow_location: [ :name ])
    end
end
