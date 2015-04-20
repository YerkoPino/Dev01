require 'test_helper'

class ActaReunionsControllerTest < ActionController::TestCase
  setup do
    @acta_reunion = acta_reunions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acta_reunions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acta_reunion" do
    assert_difference('ActaReunion.count') do
      post :create, acta_reunion: { correlativo: @acta_reunion.correlativo, fecha: @acta_reunion.fecha, proyecto_id: @acta_reunion.proyecto_id }
    end

    assert_redirected_to acta_reunion_path(assigns(:acta_reunion))
  end

  test "should show acta_reunion" do
    get :show, id: @acta_reunion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acta_reunion
    assert_response :success
  end

  test "should update acta_reunion" do
    patch :update, id: @acta_reunion, acta_reunion: { correlativo: @acta_reunion.correlativo, fecha: @acta_reunion.fecha, proyecto_id: @acta_reunion.proyecto_id }
    assert_redirected_to acta_reunion_path(assigns(:acta_reunion))
  end

  test "should destroy acta_reunion" do
    assert_difference('ActaReunion.count', -1) do
      delete :destroy, id: @acta_reunion
    end

    assert_redirected_to acta_reunions_path
  end
end
