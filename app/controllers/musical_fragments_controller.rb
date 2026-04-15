class MusicalFragmentsController < ApplicationController
  before_action :set_musical_fragment, only: %i[ show edit update destroy ]

  # GET /musical_fragments or /musical_fragments.json
  def index
    @musical_fragments = MusicalFragment.all
  end

  # GET /musical_fragments/1 or /musical_fragments/1.json
  def show
  end

  # GET /musical_fragments/new
  def new
    @musical_fragment = MusicalFragment.new
  end

  # GET /musical_fragments/1/edit
  def edit
  end

  # POST /musical_fragments or /musical_fragments.json
  def create
    @musical_fragment = MusicalFragment.new(musical_fragment_params)

    respond_to do |format|
      if @musical_fragment.save
        format.html { redirect_to @musical_fragment, notice: "Musical fragment was successfully created." }
        format.json { render :show, status: :created, location: @musical_fragment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musical_fragment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musical_fragments/1 or /musical_fragments/1.json
  def update
    respond_to do |format|
      if @musical_fragment.update(musical_fragment_params)
        format.html { redirect_to @musical_fragment, notice: "Musical fragment was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musical_fragment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musical_fragment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musical_fragments/1 or /musical_fragments/1.json
  def destroy
    @musical_fragment.destroy!

    respond_to do |format|
      format.html { redirect_to musical_fragments_path, notice: "Musical fragment was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musical_fragment
      @musical_fragment = MusicalFragment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def musical_fragment_params
      params.require(:musical_fragment).permit(
        :title, :source_title_id, :start_measure, :end_measure, :lilypond_id, 
        :nuance_id, :caractere_id, :bow_portion_id, :bow_location_id, 
        :position_id, :focus_id,
        harmonique_nature_ids: [], 
        type_accord_ids: [], 
        intervalle_ids: [], 
        voice_ids: [],
        measure_unit_ids: [],
        modificateur_ids: [],
        rhythmic_type_ids: [],
        mystring_ids: [],
        left_hand_technique_ids: [],
        action_ids: []
      )
    end
end
