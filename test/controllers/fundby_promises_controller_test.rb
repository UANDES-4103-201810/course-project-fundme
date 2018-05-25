require 'test_helper'

class FundbyPromisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fundby_promise = fundby_promises(:one)
  end

  test "should get index" do
    get fundby_promises_url
    assert_response :success
  end

  test "should get new" do
    get new_fundby_promise_url
    assert_response :success
  end

  test "should create fundby_promise" do
    assert_difference('FundbyPromise.count') do
      post fundby_promises_url, params: { fundby_promise: { project_id: @fundby_promise.project_id, promise_id: @fundby_promise.promise_id, user_id: @fundby_promise.user_id } }
    end

    assert_redirected_to fundby_promise_url(FundbyPromise.last)
  end

  test "should show fundby_promise" do
    get fundby_promise_url(@fundby_promise)
    assert_response :success
  end

  test "should get edit" do
    get edit_fundby_promise_url(@fundby_promise)
    assert_response :success
  end

  test "should update fundby_promise" do
    patch fundby_promise_url(@fundby_promise), params: { fundby_promise: { project_id: @fundby_promise.project_id, promise_id: @fundby_promise.promise_id, user_id: @fundby_promise.user_id } }
    assert_redirected_to fundby_promise_url(@fundby_promise)
  end

  test "should destroy fundby_promise" do
    assert_difference('FundbyPromise.count', -1) do
      delete fundby_promise_url(@fundby_promise)
    end

    assert_redirected_to fundby_promises_url
  end
end
