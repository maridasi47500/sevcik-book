class CaracteresController < ApplicationController
  before_action :set_caractere, only: %i[ show edit update destroy ]

  # GET /caracteres or /caracteres.json
  def index
    @caracteres = Caractere.all
  end

  # GET /caracteres/1 or /caracteres/1.json
  def show
  end

  # GET /caracteres/new
  def new
    @caractere = Caractere.new
  end

  # GET /caracteres/1/edit
  def edit
  end

  # POST /caracteres or /caracteres.json
  def create
    @caractere = Caractere.new(caractere_params)

    respond_to do |format|
      if @caractere.save
        format.html { redirect_to @caractere, notice: "Caractere was successfully created." }
        format.json { render :show, status: :created, location: @caractere }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @caractere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteres/1 or /caracteres/1.json
  def update
    respond_to do |format|
      if @caractere.update(caractere_params)
        format.html { redirect_to @caractere, notice: "Caractere was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @caractere }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @caractere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteres/1 or /caracteres/1.json
  def destroy
    @caractere.destroy!

    respond_to do |format|
      format.html { redirect_to caracteres_path, notice: "Caractere was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caractere
      @caractere = Caractere.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def caractere_params
      params.expect(caractere: [ :name ])
    end
end
