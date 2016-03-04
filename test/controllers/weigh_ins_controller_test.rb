require 'test_helper'

class WeighInsControllerTest < ActionController::TestCase
  setup do
    @weigh_in = weigh_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weigh_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weigh_in" do
    assert_difference('WeighIn.count') do
      post :create, weigh_in: { date: @weigh_in.date, weight: @weigh_in.weight }
    end

    assert_redirected_to weigh_in_path(assigns(:weigh_in))
  end

  test "should show weigh_in" do
    get :show, id: @weigh_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weigh_in
    assert_response :success
  end

  test "should update weigh_in" do
    patch :update, id: @weigh_in, weigh_in: { date: @weigh_in.date, weight: @weigh_in.weight }
    assert_redirected_to weigh_in_path(assigns(:weigh_in))
  end

  test "should destroy weigh_in" do
    assert_difference('WeighIn.count', -1) do
      delete :destroy, id: @weigh_in
    end

    assert_redirected_to weigh_ins_path
  end
end
