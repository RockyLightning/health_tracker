require 'test_helper'

class CalsControllerTest < ActionController::TestCase
  setup do
    @cal = cals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show cal" do
    get :show, id: @cal
    assert_response :success
  end

  test "should create cal" do
    assert_difference('Cal.count') do
      post :create, cal: { date: @cal.date, cals_consumed: @cal.cals_consumed }
    end

    assert_redirected_to cal_path(assigns(:cal))
  end

  test "should get edit" do
    get :edit, id: @cal
    assert_response :success
  end

  test "should update cal" do
    patch :update, id: @cal, cal: { date: @cal.date, cals_consumed: @cal.cals_consumed}
    assert_redirected_to cal_path(assigns(:cal))
  end

  test "should destroy step" do
    assert_difference('Cal.count', -1) do
      delete :destroy, id: @cal
    end

    assert_redirected_to cals_path
  end

end
