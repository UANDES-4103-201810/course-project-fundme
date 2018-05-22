require 'test_helper'

class WishlistProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wishlist_project = wishlist_projects(:one)
  end

  test "should get index" do
    get wishlist_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_wishlist_project_url
    assert_response :success
  end

  test "should create wishlist_project" do
    assert_difference('WishlistProject.count') do
      post wishlist_projects_url, params: { wishlist_project: { project_id: @wishlist_project.project_id, wishlist_id: @wishlist_project.wishlist_id } }
    end

    assert_redirected_to wishlist_project_url(WishlistProject.last)
  end

  test "should show wishlist_project" do
    get wishlist_project_url(@wishlist_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_wishlist_project_url(@wishlist_project)
    assert_response :success
  end

  test "should update wishlist_project" do
    patch wishlist_project_url(@wishlist_project), params: { wishlist_project: { project_id: @wishlist_project.project_id, wishlist_id: @wishlist_project.wishlist_id } }
    assert_redirected_to wishlist_project_url(@wishlist_project)
  end

  test "should destroy wishlist_project" do
    assert_difference('WishlistProject.count', -1) do
      delete wishlist_project_url(@wishlist_project)
    end

    assert_redirected_to wishlist_projects_url
  end
end
