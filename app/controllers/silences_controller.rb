class SilencesController < ApplicationController
  before_action :set_silence, only: %i[ show edit update destroy ]

  # GET /silences or /silences.json
  def index
    @silences = Silence.all
  end

  # GET /silences/1 or /silences/1.json
  def show
  end

  # GET /silences/new
  def new
    @silence = Silence.new
  end

  # GET /silences/1/edit
  def edit
  end

  # POST /silences or /silences.json
  def create
    @silence = Silence.new(silence_params)

    respond_to do |format|
      if @silence.save
        format.html { redirect_to @silence, notice: "Silence was successfully created." }
        format.json { render :show, status: :created, location: @silence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @silence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /silences/1 or /silences/1.json
  def update
    respond_to do |format|
      if @silence.update(silence_params)
        format.html { redirect_to @silence, notice: "Silence was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @silence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @silence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /silences/1 or /silences/1.json
  def destroy
    @silence.destroy!

    respond_to do |format|
      format.html { redirect_to silences_path, notice: "Silence was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_silence
      @silence = Silence.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def silence_params
      params.expect(silence: [ :name ])
    end
end
