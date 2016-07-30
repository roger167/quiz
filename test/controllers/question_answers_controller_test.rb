require 'test_helper'

class QuestionAnswersControllerTest < ActionController::TestCase
  setup do
    @question_answer = question_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_answer" do
    assert_difference('QuestionAnswer.count') do
      post :create, question_answer: { answer: @question_answer.answer, question: @question_answer.question }
    end

    assert_redirected_to question_answer_path(assigns(:question_answer))
  end

  test "should show question_answer" do
    get :show, id: @question_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_answer
    assert_response :success
  end

  test "should update question_answer" do
    patch :update, id: @question_answer, question_answer: { answer: @question_answer.answer, question: @question_answer.question }
    assert_redirected_to question_answer_path(assigns(:question_answer))
  end

  test "should destroy question_answer" do
    assert_difference('QuestionAnswer.count', -1) do
      delete :destroy, id: @question_answer
    end

    assert_redirected_to question_answers_path
  end
end
