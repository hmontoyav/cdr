require 'test_helper'

class CalldetailsControllerTest < ActionController::TestCase
  setup do
    @calldetail = calldetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calldetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calldetail" do
    assert_difference('Calldetail.count') do
      post :create, calldetail: { callingPartyNumber: @calldetail.callingPartyNumber, cdrRecordType: @calldetail.cdrRecordType, dateTimeConnect: @calldetail.dateTimeConnect, dateTimeDisconnect: @calldetail.dateTimeDisconnect, destDeviceName: @calldetail.destDeviceName, destIpAddr: @calldetail.destIpAddr, duration: @calldetail.duration, globalCallID_callId: @calldetail.globalCallID_callId, origDeviceName: @calldetail.origDeviceName, origIpAddr: @calldetail.origIpAddr, originalCalledPartyNumber: @calldetail.originalCalledPartyNumber, originalCalledPartyNumberPartition: @calldetail.originalCalledPartyNumberPartition }
    end

    assert_redirected_to calldetail_path(assigns(:calldetail))
  end

  test "should show calldetail" do
    get :show, id: @calldetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calldetail
    assert_response :success
  end

  test "should update calldetail" do
    patch :update, id: @calldetail, calldetail: { callingPartyNumber: @calldetail.callingPartyNumber, cdrRecordType: @calldetail.cdrRecordType, dateTimeConnect: @calldetail.dateTimeConnect, dateTimeDisconnect: @calldetail.dateTimeDisconnect, destDeviceName: @calldetail.destDeviceName, destIpAddr: @calldetail.destIpAddr, duration: @calldetail.duration, globalCallID_callId: @calldetail.globalCallID_callId, origDeviceName: @calldetail.origDeviceName, origIpAddr: @calldetail.origIpAddr, originalCalledPartyNumber: @calldetail.originalCalledPartyNumber, originalCalledPartyNumberPartition: @calldetail.originalCalledPartyNumberPartition }
    assert_redirected_to calldetail_path(assigns(:calldetail))
  end

  test "should destroy calldetail" do
    assert_difference('Calldetail.count', -1) do
      delete :destroy, id: @calldetail
    end

    assert_redirected_to calldetails_path
  end
end
