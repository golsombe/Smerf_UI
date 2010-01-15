require File.dirname(__FILE__) + '/../test_helper'

class SubQuestionsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_questions)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_sub_question
    assert_difference('SubQuestion.count') do
      post :create, :sub_question => { }
    end

    assert_redirected_to sub_question_path(assigns(:sub_question))
  end

  def test_should_show_sub_question
    get :show, :id => sub_questions(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => sub_questions(:one).id
    assert_response :success
  end

  def test_should_update_sub_question
    put :update, :id => sub_questions(:one).id, :sub_question => { }
    assert_redirected_to sub_question_path(assigns(:sub_question))
  end

  def test_should_destroy_sub_question
    assert_difference('SubQuestion.count', -1) do
      delete :destroy, :id => sub_questions(:one).id
    end

    assert_redirected_to sub_questions_path
  end
end
