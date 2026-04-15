class BowPortionsController < ApplicationController
  before_action :set_bow_portion, only: %i[ show edit update destroy ]

  # GET /bow_portions or /bow_portions.json
  def index
    @bow_portions = BowPortion.all
  end

  # GET /bow_portions/1 or /bow_portions/1.json
  def show
  end

  # GET /bow_portions/new
  def new
    @bow_portion = BowPortion.new
  end

  # GET /bow_portions/1/edit
  def edit
  end

  # POST /bow_portions or /bow_portions.json
  def create
    @bow_portion = BowPortion.new(bow_portion_params)

    respond_to do |format|
      if @bow_portion.save
        format.html { redirect_to @bow_portion, notice: "Bow portion was successfully created." }
        format.json { render :show, status: :created, location: @bow_portion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bow_portion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bow_portions/1 or /bow_portions/1.json
  def update
    respond_to do |format|
      if @bow_portion.update(bow_portion_params)
        format.html { redirect_to @bow_portion, notice: "Bow portion was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @bow_portion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bow_portion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bow_portions/1 or /bow_portions/1.json
  def destroy
    @bow_portion.destroy!

    respond_to do |format|
      format.html { redirect_to bow_portions_path, notice: "Bow portion was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow_portion
      @bow_portion = BowPortion.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bow_portion_params
      params.expect(bow_portion: [ :name ])
    end
end
