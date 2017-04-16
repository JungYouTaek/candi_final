require 'test_helper'

class CandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cand = cands(:one)
  end

  test "should get index" do
    get cands_url
    assert_response :success
  end

  test "should get new" do
    get new_cand_url
    assert_response :success
  end

  test "should create cand" do
    assert_difference('Cand.count') do
      post cands_url, params: { cand: { act: @cand.act, beginc: @cand.beginc, date: @cand.date, endc: @cand.endc, loca: @cand.loca, name: @cand.name, pwd: @cand.pwd } }
    end

    assert_redirected_to cand_url(Cand.last)
  end

  test "should show cand" do
    get cand_url(@cand)
    assert_response :success
  end

  test "should get edit" do
    get edit_cand_url(@cand)
    assert_response :success
  end

  test "should update cand" do
    patch cand_url(@cand), params: { cand: { act: @cand.act, beginc: @cand.beginc, date: @cand.date, endc: @cand.endc, loca: @cand.loca, name: @cand.name, pwd: @cand.pwd } }
    assert_redirected_to cand_url(@cand)
  end

  test "should destroy cand" do
    assert_difference('Cand.count', -1) do
      delete cand_url(@cand)
    end

    assert_redirected_to cands_url
  end
end
