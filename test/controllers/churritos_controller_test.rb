require 'test_helper'

class ChurritosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @churrito = churritos(:one)
  end

  test "should get index" do
    get churritos_url
    assert_response :success
  end

  test "should get new" do
    get new_churrito_url
    assert_response :success
  end

  test "should create churrito" do
    assert_difference('Churrito.count') do
      post churritos_url, params: { churrito: { nombre: @churrito.nombre, precio: @churrito.precio, sabor: @churrito.sabor } }
    end

    assert_redirected_to churrito_url(Churrito.last)
  end

  test "should show churrito" do
    get churrito_url(@churrito)
    assert_response :success
  end

  test "should get edit" do
    get edit_churrito_url(@churrito)
    assert_response :success
  end

  test "should update churrito" do
    patch churrito_url(@churrito), params: { churrito: { nombre: @churrito.nombre, precio: @churrito.precio, sabor: @churrito.sabor } }
    assert_redirected_to churrito_url(@churrito)
  end

  test "should destroy churrito" do
    assert_difference('Churrito.count', -1) do
      delete churrito_url(@churrito)
    end

    assert_redirected_to churritos_url
  end
end
