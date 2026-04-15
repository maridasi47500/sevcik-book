class BowSignsController < ApplicationController
  before_action :set_bow_sign, only: %i[ show edit update destroy ]

  # GET /bow_signs or /bow_signs.json
  def index
    @bow_signs = BowSign.all
  end

  # GET /bow_signs/1 or /bow_signs/1.json
  def show
  end

  # GET /bow_signs/new
  def new
    @bow_sign = BowSign.new
  end

  # GET /bow_signs/1/edit
  def edit
  end

  # POST /bow_signs or /bow_signs.json
  def create
    @bow_sign = BowSign.new(bow_sign_params)

    respond_to do |format|
      if @bow_sign.save
        format.html { redirect_to @bow_sign, notice: "Bow sign was successfully created." }
        format.json { render :show, status: :created, location: @bow_sign }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bow_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bow_signs/1 or /bow_signs/1.json
  def update
    respond_to do |format|
      if @bow_sign.update(bow_sign_params)
        format.html { redirect_to @bow_sign, notice: "Bow sign was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @bow_sign }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bow_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bow_signs/1 or /bow_signs/1.json
  def destroy
    @bow_sign.destroy!

    respond_to do |format|
      format.html { redirect_to bow_signs_path, notice: "Bow sign was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow_sign
      @bow_sign = BowSign.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bow_sign_params
      params.expect(bow_sign: [ :name ])
    end
end
