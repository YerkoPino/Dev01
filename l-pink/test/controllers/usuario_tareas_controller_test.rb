require 'test_helper'

class UsuarioTareasControllerTest < ActionController::TestCase
  setup do
    @usuario_tarea = usuario_tareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_tareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_tarea" do
    assert_difference('UsuarioTarea.count') do
      post :create, usuario_tarea: { responsable: @usuario_tarea.responsable, tarea_id: @usuario_tarea.tarea_id, user_id: @usuario_tarea.user_id }
    end

    assert_redirected_to usuario_tarea_path(assigns(:usuario_tarea))
  end

  test "should show usuario_tarea" do
    get :show, id: @usuario_tarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_tarea
    assert_response :success
  end

  test "should update usuario_tarea" do
    patch :update, id: @usuario_tarea, usuario_tarea: { responsable: @usuario_tarea.responsable, tarea_id: @usuario_tarea.tarea_id, user_id: @usuario_tarea.user_id }
    assert_redirected_to usuario_tarea_path(assigns(:usuario_tarea))
  end

  test "should destroy usuario_tarea" do
    assert_difference('UsuarioTarea.count', -1) do
      delete :destroy, id: @usuario_tarea
    end

    assert_redirected_to usuario_tareas_path
  end
end
