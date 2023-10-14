require "application_system_test_case"

class EcoProductsTest < ApplicationSystemTestCase
  setup do
    @eco_product = eco_products(:one)
  end

  test "visiting the index" do
    visit eco_products_url
    assert_selector "h1", text: "Eco products"
  end

  test "should create eco product" do
    visit eco_products_url
    click_on "New eco product"

    check "Available" if @eco_product.available
    fill_in "Condition", with: @eco_product.condition_id
    fill_in "Description", with: @eco_product.description
    fill_in "Name", with: @eco_product.name
    fill_in "Precio", with: @eco_product.precio
    fill_in "User", with: @eco_product.user_id
    click_on "Create Eco product"

    assert_text "Eco product was successfully created"
    click_on "Back"
  end

  test "should update Eco product" do
    visit eco_product_url(@eco_product)
    click_on "Edit this eco product", match: :first

    check "Available" if @eco_product.available
    fill_in "Condition", with: @eco_product.condition_id
    fill_in "Description", with: @eco_product.description
    fill_in "Name", with: @eco_product.name
    fill_in "Precio", with: @eco_product.precio
    fill_in "User", with: @eco_product.user_id
    click_on "Update Eco product"

    assert_text "Eco product was successfully updated"
    click_on "Back"
  end

  test "should destroy Eco product" do
    visit eco_product_url(@eco_product)
    click_on "Destroy this eco product", match: :first

    assert_text "Eco product was successfully destroyed"
  end
end
