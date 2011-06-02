require 'test_helper'

class PineappleStepsControllerTest < ActionController::TestCase
  setup do
    @pineapple_step = pineapple_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pineapple_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pineapple_step" do
    assert_difference('PineappleStep.count') do
      post :create, :pineapple_step => @pineapple_step.attributes
    end

    assert_redirected_to pineapple_step_path(assigns(:pineapple_step))
  end

  test "should show pineapple_step" do
    get :show, :id => @pineapple_step.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pineapple_step.to_param
    assert_response :success
  end

  test "should update pineapple_step" do
    put :update, :id => @pineapple_step.to_param, :pineapple_step => @pineapple_step.attributes
    assert_redirected_to pineapple_step_path(assigns(:pineapple_step))
  end

  test "should destroy pineapple_step" do
    assert_difference('PineappleStep.count', -1) do
      delete :destroy, :id => @pineapple_step.to_param
    end

    assert_redirected_to pineapple_steps_path
  end
end
