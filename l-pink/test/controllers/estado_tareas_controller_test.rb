require 'test_helper'

class EstadoTareasControllerTest < ActionController::TestCase
  setup do
    @estado_tarea = estado_tareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_tareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_tarea" do
    assert_difference('EstadoTarea.count') do
      post :create, estado_tarea: { descripcion: @estado_tarea.descripcion, nombre: @estado_tarea.nombre }
    end

    assert_redirected_to estado_tarea_path(assigns(:estado_tarea))
  end

  test "should show estado_tarea" do
    get :show, id: @estado_tarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_tarea
    assert_response :success
  end

  test "should update estado_tarea" do
    patch :update, id: @estado_tarea, estado_tarea: { descripcion: @estado_tarea.descripcion, nombre: @estado_tarea.nombre }
    assert_redirected_to estado_tarea_path(assigns(:estado_tarea))
  end

  test "should destroy estado_tarea" do
    assert_difference('EstadoTarea.count', -1) do
      delete :destroy, id: @estado_tarea
    end

    assert_redirected_to estado_tareas_path
  end
end
