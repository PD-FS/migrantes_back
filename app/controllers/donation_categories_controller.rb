class DonationCategoriesController < ApplicationController
  before_action :set_donation_category, only: [:show, :edit, :update, :destroy]

  # GET /donation_categories
  # GET /donation_categories.json
  def index
    @donation_categories = DonationCategory.all
  end

  # GET /donation_categories/1
  # GET /donation_categories/1.json
  def show
  end

  # GET /donation_categories/new
  def new
    @donation_category = DonationCategory.new
  end

  # GET /donation_categories/1/edit
  def edit
  end

  # POST /donation_categories
  # POST /donation_categories.json
  def create
    @donation_category = DonationCategory.new(donation_category_params)

    respond_to do |format|
      if @donation_category.save
        format.html { redirect_to @donation_category, notice: 'Donation category was successfully created.' }
        format.json { render :show, status: :created, location: @donation_category }
      else
        format.html { render :new }
        format.json { render json: @donation_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donation_categories/1
  # PATCH/PUT /donation_categories/1.json
  def update
    respond_to do |format|
      if @donation_category.update(donation_category_params)
        format.html { redirect_to @donation_category, notice: 'Donation category was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation_category }
      else
        format.html { render :edit }
        format.json { render json: @donation_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donation_categories/1
  # DELETE /donation_categories/1.json
  def destroy
    @donation_category.destroy
    respond_to do |format|
      format.html { redirect_to donation_categories_url, notice: 'Donation category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation_category
      @donation_category = DonationCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_category_params
      params.require(:donation_category).permit(:name, :icon, :donation_kind_id_id)
    end
end
