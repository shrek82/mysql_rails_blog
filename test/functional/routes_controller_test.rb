require 'test_helper'

class RoutesControllerTest < ActionController::TestCase
  setup do
    @route = routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route" do
    assert_difference('Route.count') do
      post :create, route : {banner_path : @route.banner_path, category_id : @route.category_id, city_id : @route.city_id, duration : @route.duration, img_path : @route.img_path, province_id : @route.province_id, short_title : @route.short_title, tags : @route.tags, title : @route.title, user_id : @route.user_id}
    end

    assert_redirected_to route_path(assigns(:route))
  end

  test "should show route" do
    get :show, id : @route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id : @route
    assert_response :success
  end

  test "should update route" do
    put :update, id : @route, route : {banner_path : @route.banner_path, category_id : @route.category_id, city_id : @route.city_id, duration : @route.duration, img_path : @route.img_path, province_id : @route.province_id, short_title : @route.short_title, tags : @route.tags, title : @route.title, user_id : @route.user_id}
    assert_redirected_to route_path(assigns(:route))
  end

  test "should destroy route" do
    assert_difference('Route.count', -1) do
      delete :destroy, id : @route
    end

    assert_redirected_to routes_path
  end
end
