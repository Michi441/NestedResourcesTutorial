require 'test_helper'

class ProductVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_variant = product_variants(:one)
  end

  test "should get index" do
    get product_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_product_variant_url
    assert_response :success
  end

  test "should create product_variant" do
    assert_difference('ProductVariant.count') do
      post product_variants_url, params: { product_variant: { color: @product_variant.color, product_id: @product_variant.product_id, size: @product_variant.size } }
    end

    assert_redirected_to product_variant_url(ProductVariant.last)
  end

  test "should show product_variant" do
    get product_variant_url(@product_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_variant_url(@product_variant)
    assert_response :success
  end

  test "should update product_variant" do
    patch product_variant_url(@product_variant), params: { product_variant: { color: @product_variant.color, product_id: @product_variant.product_id, size: @product_variant.size } }
    assert_redirected_to product_variant_url(@product_variant)
  end

  test "should destroy product_variant" do
    assert_difference('ProductVariant.count', -1) do
      delete product_variant_url(@product_variant)
    end

    assert_redirected_to product_variants_url
  end
end
