require "test_helper"

class EcoProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eco_product = eco_products(:one)
  end

  test "should get index" do
    get eco_products_url
    assert_response :success
  end

  test "should get new" do
    get new_eco_product_url
    assert_response :success
  end

  test "should create eco_product" do
    assert_difference("EcoProduct.count") do
      post eco_products_url, params: { eco_product: { available: @eco_product.available, condition_id: @eco_product.condition_id, description: @eco_product.description, name: @eco_product.name, precio: @eco_product.precio, user_id: @eco_product.user_id } }
    end

    assert_redirected_to eco_product_url(EcoProduct.last)
  end

  test "should show eco_product" do
    get eco_product_url(@eco_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_eco_product_url(@eco_product)
    assert_response :success
  end

  test "should update eco_product" do
    patch eco_product_url(@eco_product), params: { eco_product: { available: @eco_product.available, condition_id: @eco_product.condition_id, description: @eco_product.description, name: @eco_product.name, precio: @eco_product.precio, user_id: @eco_product.user_id } }
    assert_redirected_to eco_product_url(@eco_product)
  end

  test "should destroy eco_product" do
    assert_difference("EcoProduct.count", -1) do
      delete eco_product_url(@eco_product)
    end

    assert_redirected_to eco_products_url
  end
end
