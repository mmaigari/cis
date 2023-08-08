class CcategoriesController < ApplicationController
  before_action :set_ccategory, only: %i[ show edit update destroy ]

  # GET /ccategories or /ccategories.json
  def index
    @ccategories = Ccategory.all
  end

  # GET /ccategories/1 or /ccategories/1.json
  def show
  end

  # GET /ccategories/new
  def new
    @ccategory = Ccategory.new
  end

  # GET /ccategories/1/edit
  def edit
  end

  # POST /ccategories or /ccategories.json
  def create
    @ccategory = Ccategory.new(ccategory_params)

    respond_to do |format|
      if @ccategory.save
        format.html { redirect_to ccategory_url(@ccategory), notice: "Ccategory was successfully created." }
        format.json { render :show, status: :created, location: @ccategory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ccategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ccategories/1 or /ccategories/1.json
  def update
    respond_to do |format|
      if @ccategory.update(ccategory_params)
        format.html { redirect_to ccategory_url(@ccategory), notice: "Ccategory was successfully updated." }
        format.json { render :show, status: :ok, location: @ccategory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ccategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ccategories/1 or /ccategories/1.json
  def destroy
    @ccategory.destroy

    respond_to do |format|
      format.html { redirect_to ccategories_url, notice: "Ccategory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ccategory
      @ccategory = Ccategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ccategory_params
      params.require(:ccategory).permit(:title, :code)
    end
end
