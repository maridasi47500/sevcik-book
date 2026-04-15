class RhythmicTypesController < ApplicationController
  before_action :set_rhythmic_type, only: %i[ show edit update destroy ]

  # GET /rhythmic_types or /rhythmic_types.json
  def index
    @rhythmic_types = RhythmicType.all
  end

  # GET /rhythmic_types/1 or /rhythmic_types/1.json
  def show
  end

  # GET /rhythmic_types/new
  def new
    @rhythmic_type = RhythmicType.new
  end

  # GET /rhythmic_types/1/edit
  def edit
  end

  # POST /rhythmic_types or /rhythmic_types.json
  def create
    @rhythmic_type = RhythmicType.new(rhythmic_type_params)

    respond_to do |format|
      if @rhythmic_type.save
        format.html { redirect_to @rhythmic_type, notice: "Rhythmic type was successfully created." }
        format.json { render :show, status: :created, location: @rhythmic_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rhythmic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rhythmic_types/1 or /rhythmic_types/1.json
  def update
    respond_to do |format|
      if @rhythmic_type.update(rhythmic_type_params)
        format.html { redirect_to @rhythmic_type, notice: "Rhythmic type was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @rhythmic_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rhythmic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rhythmic_types/1 or /rhythmic_types/1.json
  def destroy
    @rhythmic_type.destroy!

    respond_to do |format|
      format.html { redirect_to rhythmic_types_path, notice: "Rhythmic type was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rhythmic_type
      @rhythmic_type = RhythmicType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def rhythmic_type_params
      params.expect(rhythmic_type: [ :name ])
    end
end
