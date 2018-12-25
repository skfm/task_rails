require 'test_helper'

class TwclonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twclone = twclones(:one)
  end

  test "should get index" do
    get twclones_url
    assert_response :success
  end

  test "should get new" do
    get new_twclone_url
    assert_response :success
  end

  test "should create twclone" do
    assert_difference('Twclone.count') do
      post twclones_url, params: { twclone: { content: @twclone.content } }
    end

    assert_redirected_to twclone_url(Twclone.last)
  end

  test "should show twclone" do
    get twclone_url(@twclone)
    assert_response :success
  end

  test "should get edit" do
    get edit_twclone_url(@twclone)
    assert_response :success
  end

  test "should update twclone" do
    patch twclone_url(@twclone), params: { twclone: { content: @twclone.content } }
    assert_redirected_to twclone_url(@twclone)
  end

  test "should destroy twclone" do
    assert_difference('Twclone.count', -1) do
      delete twclone_url(@twclone)
    end

    assert_redirected_to twclones_url
  end
end
