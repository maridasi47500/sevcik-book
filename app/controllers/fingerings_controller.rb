class FingeringsController < ApplicationController
  before_action :set_fingering, only: %i[ show edit update destroy ]

  # GET /fingerings or /fingerings.json
  def index
    @fingerings = Fingering.all
  end

  # GET /fingerings/1 or /fingerings/1.json
  def show
  end

  # GET /fingerings/new
  def new
    @fingering = Fingering.new
  end

  # GET /fingerings/1/edit
  def edit
  end

  # POST /fingerings or /fingerings.json
  def create
    @fingering = Fingering.new(fingering_params)

    respond_to do |format|
      if @fingering.save
        format.html { redirect_to @fingering, notice: "Fingering was successfully created." }
        format.json { render :show, status: :created, location: @fingering }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fingering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fingerings/1 or /fingerings/1.json
  def update
    respond_to do |format|
      if @fingering.update(fingering_params)
        format.html { redirect_to @fingering, notice: "Fingering was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @fingering }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fingering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fingerings/1 or /fingerings/1.json
  def destroy
    @fingering.destroy!

    respond_to do |format|
      format.html { redirect_to fingerings_path, notice: "Fingering was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fingering
      @fingering = Fingering.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def fingering_params
      params.expect(fingering: [ :name ])
    end
end
