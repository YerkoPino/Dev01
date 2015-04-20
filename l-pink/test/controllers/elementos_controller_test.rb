require 'test_helper'

class ElementosControllerTest < ActionController::TestCase
  setup do
    @elemento = elementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elemento" do
    assert_difference('Elemento.count') do
      post :create, elemento: { contexto: @elemento.contexto, descripcion: @elemento.descripcion, elemento_id: @elemento.elemento_id, estado: @elemento.estado, fecha_compromiso: @elemento.fecha_compromiso, nombre: @elemento.nombre, tema_id: @elemento.tema_id, tipo: @elemento.tipo }
    end

    assert_redirected_to elemento_path(assigns(:elemento))
  end

  test "should show elemento" do
    get :show, id: @elemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elemento
    assert_response :success
  end

  test "should update elemento" do
    patch :update, id: @elemento, elemento: { contexto: @elemento.contexto, descripcion: @elemento.descripcion, elemento_id: @elemento.elemento_id, estado: @elemento.estado, fecha_compromiso: @elemento.fecha_compromiso, nombre: @elemento.nombre, tema_id: @elemento.tema_id, tipo: @elemento.tipo }
    assert_redirected_to elemento_path(assigns(:elemento))
  end

  test "should destroy elemento" do
    assert_difference('Elemento.count', -1) do
      delete :destroy, id: @elemento
    end

    assert_redirected_to elementos_path
  end
end
