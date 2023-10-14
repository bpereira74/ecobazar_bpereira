class EcoProductsController < ApplicationController
  before_action :set_eco_product, only: %i[ show edit update destroy ]

  # GET /eco_products or /eco_products.json
  def index
    @eco_products = EcoProduct.all
  end

  # GET /eco_products/1 or /eco_products/1.json
  def show
  end

  # GET /eco_products/new
  def new
    @eco_product = EcoProduct.new
  end

  # GET /eco_products/1/edit
  def edit
  end

  # POST /eco_products or /eco_products.json
  def create
    @eco_product = EcoProduct.new(eco_product_params)

    respond_to do |format|
      if @eco_product.save
        format.html { redirect_to eco_product_url(@eco_product), notice: "Eco product was successfully created." }
        format.json { render :show, status: :created, location: @eco_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @eco_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eco_products/1 or /eco_products/1.json
  def update
    respond_to do |format|
      if @eco_product.update(eco_product_params)
        format.html { redirect_to eco_product_url(@eco_product), notice: "Eco product was successfully updated." }
        format.json { render :show, status: :ok, location: @eco_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @eco_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eco_products/1 or /eco_products/1.json
  def destroy
    @eco_product.destroy

    respond_to do |format|
      format.html { redirect_to eco_products_url, notice: "Eco product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eco_product
      @eco_product = EcoProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def eco_product_params
      params.require(:eco_product).permit(:user_id, :name, :description, :condition_id, :precio, :available)
    end
end
