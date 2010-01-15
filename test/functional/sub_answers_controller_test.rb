require File.dirname(__FILE__) + '/../test_helper'

class SubAnswersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_answers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_sub_answer
    assert_difference('SubAnswer.count') do
      post :create, :sub_answer => { }
    end

    assert_redirected_to sub_answer_path(assigns(:sub_answer))
  end

  def test_should_show_sub_answer
    get :show, :id => sub_answers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => sub_answers(:one).id
    assert_response :success
  end

  def test_should_update_sub_answer
    put :update, :id => sub_answers(:one).id, :sub_answer => { }
    assert_redirected_to sub_answer_path(assigns(:sub_answer))
  end

  def test_should_destroy_sub_answer
    assert_difference('SubAnswer.count', -1) do
      delete :destroy, :id => sub_answers(:one).id
    end

    assert_redirected_to sub_answers_path
  end
end
