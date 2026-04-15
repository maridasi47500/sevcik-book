class FocusController < ApplicationController
  before_action :set_focu, only: %i[ show edit update destroy ]

  # GET /focus or /focus.json
  def index
    @focus = Focu.all
  end

  # GET /focus/1 or /focus/1.json
  def show
  end

  # GET /focus/new
  def new
    @focu = Focu.new
  end

  # GET /focus/1/edit
  def edit
  end

  # POST /focus or /focus.json
  def create
    @focu = Focu.new(focu_params)

    respond_to do |format|
      if @focu.save
        format.html { redirect_to @focu, notice: "Focu was successfully created." }
        format.json { render :show, status: :created, location: @focu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @focu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /focus/1 or /focus/1.json
  def update
    respond_to do |format|
      if @focu.update(focu_params)
        format.html { redirect_to @focu, notice: "Focu was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @focu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @focu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /focus/1 or /focus/1.json
  def destroy
    @focu.destroy!

    respond_to do |format|
      format.html { redirect_to focus_path, notice: "Focu was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_focu
      @focu = Focu.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def focu_params
      params.expect(focu: [ :name ])
    end
end
