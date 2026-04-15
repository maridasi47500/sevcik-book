class ModificateursController < ApplicationController
  before_action :set_modificateur, only: %i[ show edit update destroy ]

  # GET /modificateurs or /modificateurs.json
  def index
    @modificateurs = Modificateur.all
  end

  # GET /modificateurs/1 or /modificateurs/1.json
  def show
  end

  # GET /modificateurs/new
  def new
    @modificateur = Modificateur.new
  end

  # GET /modificateurs/1/edit
  def edit
  end

  # POST /modificateurs or /modificateurs.json
  def create
    @modificateur = Modificateur.new(modificateur_params)

    respond_to do |format|
      if @modificateur.save
        format.html { redirect_to @modificateur, notice: "Modificateur was successfully created." }
        format.json { render :show, status: :created, location: @modificateur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @modificateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modificateurs/1 or /modificateurs/1.json
  def update
    respond_to do |format|
      if @modificateur.update(modificateur_params)
        format.html { redirect_to @modificateur, notice: "Modificateur was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @modificateur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @modificateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modificateurs/1 or /modificateurs/1.json
  def destroy
    @modificateur.destroy!

    respond_to do |format|
      format.html { redirect_to modificateurs_path, notice: "Modificateur was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modificateur
      @modificateur = Modificateur.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def modificateur_params
      params.expect(modificateur: [ :name ])
    end
end
