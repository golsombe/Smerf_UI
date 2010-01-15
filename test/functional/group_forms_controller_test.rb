require File.dirname(__FILE__) + '/../test_helper'

class GroupFormsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:group_forms)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_group_form
    assert_difference('GroupForm.count') do
      post :create, :group_form => { }
    end

    assert_redirected_to group_form_path(assigns(:group_form))
  end

  def test_should_show_group_form
    get :show, :id => group_forms(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => group_forms(:one).id
    assert_response :success
  end

  def test_should_update_group_form
    put :update, :id => group_forms(:one).id, :group_form => { }
    assert_redirected_to group_form_path(assigns(:group_form))
  end

  def test_should_destroy_group_form
    assert_difference('GroupForm.count', -1) do
      delete :destroy, :id => group_forms(:one).id
    end

    assert_redirected_to group_forms_path
  end
end
