class HarmoniqueNaturesController < ApplicationController
  before_action :set_harmonique_nature, only: %i[ show edit update destroy ]

  # GET /harmonique_natures or /harmonique_natures.json
  def index
    @harmonique_natures = HarmoniqueNature.all
  end

  # GET /harmonique_natures/1 or /harmonique_natures/1.json
  def show
  end

  # GET /harmonique_natures/new
  def new
    @harmonique_nature = HarmoniqueNature.new
  end

  # GET /harmonique_natures/1/edit
  def edit
  end

  # POST /harmonique_natures or /harmonique_natures.json
  def create
    @harmonique_nature = HarmoniqueNature.new(harmonique_nature_params)

    respond_to do |format|
      if @harmonique_nature.save
        format.html { redirect_to @harmonique_nature, notice: "Harmonique nature was successfully created." }
        format.json { render :show, status: :created, location: @harmonique_nature }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @harmonique_nature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harmonique_natures/1 or /harmonique_natures/1.json
  def update
    respond_to do |format|
      if @harmonique_nature.update(harmonique_nature_params)
        format.html { redirect_to @harmonique_nature, notice: "Harmonique nature was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @harmonique_nature }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @harmonique_nature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harmonique_natures/1 or /harmonique_natures/1.json
  def destroy
    @harmonique_nature.destroy!

    respond_to do |format|
      format.html { redirect_to harmonique_natures_path, notice: "Harmonique nature was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harmonique_nature
      @harmonique_nature = HarmoniqueNature.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def harmonique_nature_params
      params.expect(harmonique_nature: [ :name ])
    end
end
