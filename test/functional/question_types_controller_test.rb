require File.dirname(__FILE__) + '/../test_helper'

class QuestionTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:question_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_question_type
    assert_difference('QuestionType.count') do
      post :create, :question_type => { }
    end

    assert_redirected_to question_type_path(assigns(:question_type))
  end

  def test_should_show_question_type
    get :show, :id => question_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => question_types(:one).id
    assert_response :success
  end

  def test_should_update_question_type
    put :update, :id => question_types(:one).id, :question_type => { }
    assert_redirected_to question_type_path(assigns(:question_type))
  end

  def test_should_destroy_question_type
    assert_difference('QuestionType.count', -1) do
      delete :destroy, :id => question_types(:one).id
    end

    assert_redirected_to question_types_path
  end
end
