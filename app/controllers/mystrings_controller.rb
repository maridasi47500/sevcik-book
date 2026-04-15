class MystringsController < ApplicationController
  before_action :set_mystring, only: %i[ show edit update destroy ]

  # GET /mystrings or /mystrings.json
  def index
    @mystrings = Mystring.all
  end

  # GET /mystrings/1 or /mystrings/1.json
  def show
  end

  # GET /mystrings/new
  def new
    @mystring = Mystring.new
  end

  # GET /mystrings/1/edit
  def edit
  end

  # POST /mystrings or /mystrings.json
  def create
    @mystring = Mystring.new(mystring_params)

    respond_to do |format|
      if @mystring.save
        format.html { redirect_to @mystring, notice: "Mystring was successfully created." }
        format.json { render :show, status: :created, location: @mystring }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mystring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mystrings/1 or /mystrings/1.json
  def update
    respond_to do |format|
      if @mystring.update(mystring_params)
        format.html { redirect_to @mystring, notice: "Mystring was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @mystring }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mystring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mystrings/1 or /mystrings/1.json
  def destroy
    @mystring.destroy!

    respond_to do |format|
      format.html { redirect_to mystrings_path, notice: "Mystring was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mystring
      @mystring = Mystring.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def mystring_params
      params.expect(mystring: [ :name ])
    end
end
