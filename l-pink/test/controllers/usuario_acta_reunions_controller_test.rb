require 'test_helper'

class UsuarioActaReunionsControllerTest < ActionController::TestCase
  setup do
    @usuario_acta_reunion = usuario_acta_reunions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_acta_reunions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_acta_reunion" do
    assert_difference('UsuarioActaReunion.count') do
      post :create, usuario_acta_reunion: { acta_reunion_id: @usuario_acta_reunion.acta_reunion_id, secretario: @usuario_acta_reunion.secretario, user_id: @usuario_acta_reunion.user_id }
    end

    assert_redirected_to usuario_acta_reunion_path(assigns(:usuario_acta_reunion))
  end

  test "should show usuario_acta_reunion" do
    get :show, id: @usuario_acta_reunion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_acta_reunion
    assert_response :success
  end

  test "should update usuario_acta_reunion" do
    patch :update, id: @usuario_acta_reunion, usuario_acta_reunion: { acta_reunion_id: @usuario_acta_reunion.acta_reunion_id, secretario: @usuario_acta_reunion.secretario, user_id: @usuario_acta_reunion.user_id }
    assert_redirected_to usuario_acta_reunion_path(assigns(:usuario_acta_reunion))
  end

  test "should destroy usuario_acta_reunion" do
    assert_difference('UsuarioActaReunion.count', -1) do
      delete :destroy, id: @usuario_acta_reunion
    end

    assert_redirected_to usuario_acta_reunions_path
  end
end
