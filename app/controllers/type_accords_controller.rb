class TypeAccordsController < ApplicationController
  before_action :set_type_accord, only: %i[ show edit update destroy ]

  # GET /type_accords or /type_accords.json
  def index
    @type_accords = TypeAccord.all
  end

  # GET /type_accords/1 or /type_accords/1.json
  def show
  end

  # GET /type_accords/new
  def new
    @type_accord = TypeAccord.new
  end

  # GET /type_accords/1/edit
  def edit
  end

  # POST /type_accords or /type_accords.json
  def create
    @type_accord = TypeAccord.new(type_accord_params)

    respond_to do |format|
      if @type_accord.save
        format.html { redirect_to @type_accord, notice: "Type accord was successfully created." }
        format.json { render :show, status: :created, location: @type_accord }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_accord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_accords/1 or /type_accords/1.json
  def update
    respond_to do |format|
      if @type_accord.update(type_accord_params)
        format.html { redirect_to @type_accord, notice: "Type accord was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @type_accord }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_accord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_accords/1 or /type_accords/1.json
  def destroy
    @type_accord.destroy!

    respond_to do |format|
      format.html { redirect_to type_accords_path, notice: "Type accord was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_accord
      @type_accord = TypeAccord.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def type_accord_params
      params.expect(type_accord: [ :name ])
    end
end
