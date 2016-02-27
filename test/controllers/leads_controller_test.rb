require 'test_helper'

class LeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead = leads(:one)
  end

  test "should get index" do
    get leads_url
    assert_response :success
  end

  test "should create lead" do
    assert_difference('Lead.count') do
      post leads_url, params: { lead: { email: @lead.email, first_name: @lead.first_name, gender: @lead.gender, interests: @lead.interests, last_name: @lead.last_name, mobile: @lead.mobile, phone: @lead.phone } }
    end

    assert_response 201
  end

  test "should show lead" do
    get lead_url(@lead)
    assert_response :success
  end

  test "should update lead" do
    patch lead_url(@lead), params: { lead: { email: @lead.email, first_name: @lead.first_name, gender: @lead.gender, interests: @lead.interests, last_name: @lead.last_name, mobile: @lead.mobile, phone: @lead.phone } }
    assert_response 200
  end

  test "should destroy lead" do
    assert_difference('Lead.count', -1) do
      delete lead_url(@lead)
    end

    assert_response 204
  end
end
