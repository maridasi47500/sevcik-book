class MusicalPhrasingsController < ApplicationController
  before_action :set_musical_phrasing, only: %i[ show edit update destroy ]

  # GET /musical_phrasings or /musical_phrasings.json
  def index
    @musical_phrasings = MusicalPhrasing.all
  end

  # GET /musical_phrasings/1 or /musical_phrasings/1.json
  def show
  end

  # GET /musical_phrasings/new
  def new
    @musical_phrasing = MusicalPhrasing.new
  end

  # GET /musical_phrasings/1/edit
  def edit
  end

  # POST /musical_phrasings or /musical_phrasings.json
  def create
    @musical_phrasing = MusicalPhrasing.new(musical_phrasing_params)

    respond_to do |format|
      if @musical_phrasing.save
        format.html { redirect_to @musical_phrasing, notice: "Musical phrasing was successfully created." }
        format.json { render :show, status: :created, location: @musical_phrasing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musical_phrasing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musical_phrasings/1 or /musical_phrasings/1.json
  def update
    respond_to do |format|
      if @musical_phrasing.update(musical_phrasing_params)
        format.html { redirect_to @musical_phrasing, notice: "Musical phrasing was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musical_phrasing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musical_phrasing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musical_phrasings/1 or /musical_phrasings/1.json
  def destroy
    @musical_phrasing.destroy!

    respond_to do |format|
      format.html { redirect_to musical_phrasings_path, notice: "Musical phrasing was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musical_phrasing
      @musical_phrasing = MusicalPhrasing.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def musical_phrasing_params
      params.expect(musical_phrasing: [ :name ])
    end
end
