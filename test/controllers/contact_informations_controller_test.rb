require 'test_helper'

class ContactInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_information = contact_informations(:one)
  end

  test "should get index" do
    get contact_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_information_url
    assert_response :success
  end

  test "should create contact_information" do
    assert_difference('ContactInformation.count') do
      post contact_informations_url, params: { contact_information: { address: @contact_information.address, phone_number: @contact_information.phone_number } }
    end

    assert_redirected_to contact_information_url(ContactInformation.last)
  end

  test "should show contact_information" do
    get contact_information_url(@contact_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_information_url(@contact_information)
    assert_response :success
  end

  test "should update contact_information" do
    patch contact_information_url(@contact_information), params: { contact_information: { address: @contact_information.address, phone_number: @contact_information.phone_number } }
    assert_redirected_to contact_information_url(@contact_information)
  end

  test "should destroy contact_information" do
    assert_difference('ContactInformation.count', -1) do
      delete contact_information_url(@contact_information)
    end

    assert_redirected_to contact_informations_url
  end
end
