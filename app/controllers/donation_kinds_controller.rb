class DonationKindsController < ApplicationController
  before_action :set_donation_kind, only: [:show, :edit, :update, :destroy]

  # GET /donation_kinds
  # GET /donation_kinds.json
  def index
    @donation_kinds = DonationKind.all
  end

  # GET /donation_kinds/1
  # GET /donation_kinds/1.json
  def show
  end

  # GET /donation_kinds/new
  def new
    @donation_kind = DonationKind.new
  end

  # GET /donation_kinds/1/edit
  def edit
  end

  # POST /donation_kinds
  # POST /donation_kinds.json
  def create
    @donation_kind = DonationKind.new(donation_kind_params)

    respond_to do |format|
      if @donation_kind.save
        format.html { redirect_to @donation_kind, notice: 'Donation kind was successfully created.' }
        format.json { render :show, status: :created, location: @donation_kind }
      else
        format.html { render :new }
        format.json { render json: @donation_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donation_kinds/1
  # PATCH/PUT /donation_kinds/1.json
  def update
    respond_to do |format|
      if @donation_kind.update(donation_kind_params)
        format.html { redirect_to @donation_kind, notice: 'Donation kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation_kind }
      else
        format.html { render :edit }
        format.json { render json: @donation_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donation_kinds/1
  # DELETE /donation_kinds/1.json
  def destroy
    @donation_kind.destroy
    respond_to do |format|
      format.html { redirect_to donation_kinds_url, notice: 'Donation kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation_kind
      @donation_kind = DonationKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_kind_params
      params.require(:donation_kind).permit(:name)
    end
end
