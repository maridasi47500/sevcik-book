class LeftHandTechniquesController < ApplicationController
  before_action :set_left_hand_technique, only: %i[ show edit update destroy ]

  # GET /left_hand_techniques or /left_hand_techniques.json
  def index
    @left_hand_techniques = LeftHandTechnique.all
  end

  # GET /left_hand_techniques/1 or /left_hand_techniques/1.json
  def show
  end

  # GET /left_hand_techniques/new
  def new
    @left_hand_technique = LeftHandTechnique.new
  end

  # GET /left_hand_techniques/1/edit
  def edit
  end

  # POST /left_hand_techniques or /left_hand_techniques.json
  def create
    @left_hand_technique = LeftHandTechnique.new(left_hand_technique_params)

    respond_to do |format|
      if @left_hand_technique.save
        format.html { redirect_to @left_hand_technique, notice: "Left hand technique was successfully created." }
        format.json { render :show, status: :created, location: @left_hand_technique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @left_hand_technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /left_hand_techniques/1 or /left_hand_techniques/1.json
  def update
    respond_to do |format|
      if @left_hand_technique.update(left_hand_technique_params)
        format.html { redirect_to @left_hand_technique, notice: "Left hand technique was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @left_hand_technique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @left_hand_technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /left_hand_techniques/1 or /left_hand_techniques/1.json
  def destroy
    @left_hand_technique.destroy!

    respond_to do |format|
      format.html { redirect_to left_hand_techniques_path, notice: "Left hand technique was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_left_hand_technique
      @left_hand_technique = LeftHandTechnique.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def left_hand_technique_params
      params.expect(left_hand_technique: [ :name ])
    end
end
