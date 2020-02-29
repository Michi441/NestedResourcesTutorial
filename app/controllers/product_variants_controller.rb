class ProductVariantsController < ApplicationController
  before_action :set_product_variant, only: [:show, :edit, :update, :destroy]

  # GET /product_variants
  # GET /product_variants.json
  def index
    @product_variants = ProductVariant.all
  end

  # GET /product_variants/1
  # GET /product_variants/1.json
  def show
  end

  # GET /product_variants/new
  def new
    @product_variant = ProductVariant.new
  end

  # GET /product_variants/1/edit
  def edit
  end

  # POST /product_variants
  # POST /product_variants.json
  def create
    @product_variant = ProductVariant.new(product_variant_params)

    respond_to do |format|
      if @product_variant.save
        format.html { redirect_to @product_variant, notice: 'Product variant was successfully created.' }
        format.json { render :show, status: :created, location: @product_variant }
      else
        format.html { render :new }
        format.json { render json: @product_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_variants/1
  # PATCH/PUT /product_variants/1.json
  def update
    respond_to do |format|
      if @product_variant.update(product_variant_params)
        format.html { redirect_to @product_variant, notice: 'Product variant was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_variant }
      else
        format.html { render :edit }
        format.json { render json: @product_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_variants/1
  # DELETE /product_variants/1.json
  def destroy
    @product_variant.destroy
    respond_to do |format|
      format.html { redirect_to product_variants_url, notice: 'Product variant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_variant
      @product_variant = ProductVariant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_variant_params
      params.require(:product_variant).permit(:color, :size, :product_id)
    end
end
