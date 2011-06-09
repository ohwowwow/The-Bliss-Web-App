require 'test_helper'

class ViewRoomStatusRoomsControllerTest < ActionController::TestCase
  setup do
    @view_room_status_room = view_room_status_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:view_room_status_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create view_room_status_room" do
    assert_difference('ViewRoomStatusRoom.count') do
      post :create, :view_room_status_room => @view_room_status_room.attributes
    end

    assert_redirected_to view_room_status_room_path(assigns(:view_room_status_room))
  end

  test "should show view_room_status_room" do
    get :show, :id => @view_room_status_room.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @view_room_status_room.to_param
    assert_response :success
  end

  test "should update view_room_status_room" do
    put :update, :id => @view_room_status_room.to_param, :view_room_status_room => @view_room_status_room.attributes
    assert_redirected_to view_room_status_room_path(assigns(:view_room_status_room))
  end

  test "should destroy view_room_status_room" do
    assert_difference('ViewRoomStatusRoom.count', -1) do
      delete :destroy, :id => @view_room_status_room.to_param
    end

    assert_redirected_to view_room_status_rooms_path
  end
end
