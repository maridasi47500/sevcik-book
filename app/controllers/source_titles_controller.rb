class SourceTitlesController < ApplicationController
  before_action :set_source_title, only: %i[ show edit update destroy ]

  # GET /source_titles or /source_titles.json
  def index
    @source_titles = SourceTitle.all
  end

  # GET /source_titles/1 or /source_titles/1.json
  def show
  end

  # GET /source_titles/new
  def new
    @source_title = SourceTitle.new
  end

  # GET /source_titles/1/edit
  def edit
  end

  # POST /source_titles or /source_titles.json
  def create
    @source_title = SourceTitle.new(source_title_params)

    respond_to do |format|
      if @source_title.save
        format.html { redirect_to @source_title, notice: "Source title was successfully created." }
        format.json { render :show, status: :created, location: @source_title }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @source_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_titles/1 or /source_titles/1.json
  def update
    respond_to do |format|
      if @source_title.update(source_title_params)
        format.html { redirect_to @source_title, notice: "Source title was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @source_title }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @source_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_titles/1 or /source_titles/1.json
  def destroy
    @source_title.destroy!

    respond_to do |format|
      format.html { redirect_to source_titles_path, notice: "Source title was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_title
      @source_title = SourceTitle.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def source_title_params
      params.expect(source_title: [ :musical_instrument_id, :composer, :id_opus, :number ])
    end
end
