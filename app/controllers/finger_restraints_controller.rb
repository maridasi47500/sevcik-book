class FingerRestraintsController < ApplicationController
  before_action :set_finger_restraint, only: %i[ show edit update destroy ]

  # GET /finger_restraints or /finger_restraints.json
  def index
    @finger_restraints = FingerRestraint.all
  end

  # GET /finger_restraints/1 or /finger_restraints/1.json
  def show
  end

  # GET /finger_restraints/new
  def new
    @finger_restraint = FingerRestraint.new
  end

  # GET /finger_restraints/1/edit
  def edit
  end

  # POST /finger_restraints or /finger_restraints.json
  def create
    @finger_restraint = FingerRestraint.new(finger_restraint_params)

    respond_to do |format|
      if @finger_restraint.save
        format.html { redirect_to @finger_restraint, notice: "Finger restraint was successfully created." }
        format.json { render :show, status: :created, location: @finger_restraint }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finger_restraint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finger_restraints/1 or /finger_restraints/1.json
  def update
    respond_to do |format|
      if @finger_restraint.update(finger_restraint_params)
        format.html { redirect_to @finger_restraint, notice: "Finger restraint was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @finger_restraint }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finger_restraint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finger_restraints/1 or /finger_restraints/1.json
  def destroy
    @finger_restraint.destroy!

    respond_to do |format|
      format.html { redirect_to finger_restraints_path, notice: "Finger restraint was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finger_restraint
      @finger_restraint = FingerRestraint.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def finger_restraint_params
      params.expect(finger_restraint: [ :name ])
    end
end
