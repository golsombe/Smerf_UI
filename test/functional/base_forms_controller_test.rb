require File.dirname(__FILE__) + '/../test_helper'

class BaseFormsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:base_forms)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_base_form
    assert_difference('BaseForm.count') do
      post :create, :base_form => { }
    end

    assert_redirected_to base_form_path(assigns(:base_form))
  end

  def test_should_show_base_form
    get :show, :id => base_forms(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => base_forms(:one).id
    assert_response :success
  end

  def test_should_update_base_form
    put :update, :id => base_forms(:one).id, :base_form => { }
    assert_redirected_to base_form_path(assigns(:base_form))
  end

  def test_should_destroy_base_form
    assert_difference('BaseForm.count', -1) do
      delete :destroy, :id => base_forms(:one).id
    end

    assert_redirected_to base_forms_path
  end
end
