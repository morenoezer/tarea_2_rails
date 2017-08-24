require 'test_helper'

class GokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goku = gokus(:one)
  end

  test "should get index" do
    get gokus_url
    assert_response :success
  end

  test "should get new" do
    get new_goku_url
    assert_response :success
  end

  test "should create goku" do
    assert_difference('Goku.count') do
      post gokus_url, params: { goku: { body: @goku.body, title: @goku.title } }
    end

    assert_redirected_to goku_url(Goku.last)
  end

  test "should show goku" do
    get goku_url(@goku)
    assert_response :success
  end

  test "should get edit" do
    get edit_goku_url(@goku)
    assert_response :success
  end

  test "should update goku" do
    patch goku_url(@goku), params: { goku: { body: @goku.body, title: @goku.title } }
    assert_redirected_to goku_url(@goku)
  end

  test "should destroy goku" do
    assert_difference('Goku.count', -1) do
      delete goku_url(@goku)
    end

    assert_redirected_to gokus_url
  end
end
