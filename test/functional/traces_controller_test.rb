require 'test_helper'

class TracesControllerTest < ActionController::TestCase
  setup do
    @trace = traces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trace" do
    assert_difference('Trace.count') do
      post :create, :trace => @trace.attributes
    end

    assert_redirected_to trace_path(assigns(:trace))
  end

  test "should show trace" do
    get :show, :id => @trace.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trace.to_param
    assert_response :success
  end

  test "should update trace" do
    put :update, :id => @trace.to_param, :trace => @trace.attributes
    assert_redirected_to trace_path(assigns(:trace))
  end

  test "should destroy trace" do
    assert_difference('Trace.count', -1) do
      delete :destroy, :id => @trace.to_param
    end

    assert_redirected_to traces_path
  end
end
