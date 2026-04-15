class BowTechniquesController < ApplicationController
  before_action :set_bow_technique, only: %i[ show edit update destroy ]

  # GET /bow_techniques or /bow_techniques.json
  def index
    @bow_techniques = BowTechnique.all
  end

  # GET /bow_techniques/1 or /bow_techniques/1.json
  def show
  end

  # GET /bow_techniques/new
  def new
    @bow_technique = BowTechnique.new
  end

  # GET /bow_techniques/1/edit
  def edit
  end

  # POST /bow_techniques or /bow_techniques.json
  def create
    @bow_technique = BowTechnique.new(bow_technique_params)

    respond_to do |format|
      if @bow_technique.save
        format.html { redirect_to @bow_technique, notice: "Bow technique was successfully created." }
        format.json { render :show, status: :created, location: @bow_technique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bow_technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bow_techniques/1 or /bow_techniques/1.json
  def update
    respond_to do |format|
      if @bow_technique.update(bow_technique_params)
        format.html { redirect_to @bow_technique, notice: "Bow technique was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @bow_technique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bow_technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bow_techniques/1 or /bow_techniques/1.json
  def destroy
    @bow_technique.destroy!

    respond_to do |format|
      format.html { redirect_to bow_techniques_path, notice: "Bow technique was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow_technique
      @bow_technique = BowTechnique.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bow_technique_params
      params.expect(bow_technique: [ :name ])
    end
end
