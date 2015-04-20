require 'test_helper'

class UsuarioElementosControllerTest < ActionController::TestCase
  setup do
    @usuario_elemento = usuario_elementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_elementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_elemento" do
    assert_difference('UsuarioElemento.count') do
      post :create, usuario_elemento: { elemento_id: @usuario_elemento.elemento_id, responsable: @usuario_elemento.responsable, user_id: @usuario_elemento.user_id }
    end

    assert_redirected_to usuario_elemento_path(assigns(:usuario_elemento))
  end

  test "should show usuario_elemento" do
    get :show, id: @usuario_elemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_elemento
    assert_response :success
  end

  test "should update usuario_elemento" do
    patch :update, id: @usuario_elemento, usuario_elemento: { elemento_id: @usuario_elemento.elemento_id, responsable: @usuario_elemento.responsable, user_id: @usuario_elemento.user_id }
    assert_redirected_to usuario_elemento_path(assigns(:usuario_elemento))
  end

  test "should destroy usuario_elemento" do
    assert_difference('UsuarioElemento.count', -1) do
      delete :destroy, id: @usuario_elemento
    end

    assert_redirected_to usuario_elementos_path
  end
end
