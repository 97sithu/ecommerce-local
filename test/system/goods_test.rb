require "application_system_test_case"

class GoodsTest < ApplicationSystemTestCase
  setup do
    @good = goods(:one)
  end

  test "visiting the index" do
    visit goods_url
    assert_selector "h1", text: "Goods"
  end

  test "creating a Good" do
    visit goods_url
    click_on "New Good"

    fill_in "About", with: @good.about
    fill_in "Category", with: @good.category_id
    fill_in "Expiredate", with: @good.expireDate
    fill_in "Measurement", with: @good.measurement
    fill_in "Name", with: @good.name
    fill_in "Price", with: @good.price
    fill_in "Seller", with: @good.seller_id
    click_on "Create Good"

    assert_text "Good was successfully created"
    click_on "Back"
  end

  test "updating a Good" do
    visit goods_url
    click_on "Edit", match: :first

    fill_in "About", with: @good.about
    fill_in "Category", with: @good.category_id
    fill_in "Expiredate", with: @good.expireDate
    fill_in "Measurement", with: @good.measurement
    fill_in "Name", with: @good.name
    fill_in "Price", with: @good.price
    fill_in "Seller", with: @good.seller_id
    click_on "Update Good"

    assert_text "Good was successfully updated"
    click_on "Back"
  end

  test "destroying a Good" do
    visit goods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Good was successfully destroyed"
  end
end
