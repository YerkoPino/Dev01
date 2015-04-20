require 'test_helper'

class UsuarioProyectosControllerTest < ActionController::TestCase
  setup do
    @usuario_proyecto = usuario_proyectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_proyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_proyecto" do
    assert_difference('UsuarioProyecto.count') do
      post :create, usuario_proyecto: { proyecto_id: @usuario_proyecto.proyecto_id, user_id: @usuario_proyecto.user_id }
    end

    assert_redirected_to usuario_proyecto_path(assigns(:usuario_proyecto))
  end

  test "should show usuario_proyecto" do
    get :show, id: @usuario_proyecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_proyecto
    assert_response :success
  end

  test "should update usuario_proyecto" do
    patch :update, id: @usuario_proyecto, usuario_proyecto: { proyecto_id: @usuario_proyecto.proyecto_id, user_id: @usuario_proyecto.user_id }
    assert_redirected_to usuario_proyecto_path(assigns(:usuario_proyecto))
  end

  test "should destroy usuario_proyecto" do
    assert_difference('UsuarioProyecto.count', -1) do
      delete :destroy, id: @usuario_proyecto
    end

    assert_redirected_to usuario_proyectos_path
  end
end
