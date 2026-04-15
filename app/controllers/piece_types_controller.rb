class PieceTypesController < ApplicationController
  before_action :set_piece_type, only: %i[ show edit update destroy ]

  # GET /piece_types or /piece_types.json
  def index
    @piece_types = PieceType.all
  end

  # GET /piece_types/1 or /piece_types/1.json
  def show
  end

  # GET /piece_types/new
  def new
    @piece_type = PieceType.new
  end

  # GET /piece_types/1/edit
  def edit
  end

  # POST /piece_types or /piece_types.json
  def create
    @piece_type = PieceType.new(piece_type_params)

    respond_to do |format|
      if @piece_type.save
        format.html { redirect_to @piece_type, notice: "Piece type was successfully created." }
        format.json { render :show, status: :created, location: @piece_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @piece_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece_types/1 or /piece_types/1.json
  def update
    respond_to do |format|
      if @piece_type.update(piece_type_params)
        format.html { redirect_to @piece_type, notice: "Piece type was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @piece_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @piece_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece_types/1 or /piece_types/1.json
  def destroy
    @piece_type.destroy!

    respond_to do |format|
      format.html { redirect_to piece_types_path, notice: "Piece type was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece_type
      @piece_type = PieceType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def piece_type_params
      params.expect(piece_type: [ :name ])
    end
end
