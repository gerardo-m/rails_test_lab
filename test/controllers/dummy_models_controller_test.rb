require "test_helper"

class DummyModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dummy_model = dummy_models(:one)
  end

  test "should get index" do
    get dummy_models_url
    assert_response :success
  end

  test "should get new" do
    get new_dummy_model_url
    assert_response :success
  end

  test "should create dummy_model" do
    assert_difference('DummyModel.count') do
      post dummy_models_url, params: { dummy_model: { dummy_text1: @dummy_model.dummy_text1, dummy_text2: @dummy_model.dummy_text2, dummy_text3: @dummy_model.dummy_text3 } }
    end

    assert_redirected_to dummy_model_url(DummyModel.last)
  end

  test "should show dummy_model" do
    get dummy_model_url(@dummy_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_dummy_model_url(@dummy_model)
    assert_response :success
  end

  test "should update dummy_model" do
    patch dummy_model_url(@dummy_model), params: { dummy_model: { dummy_text1: @dummy_model.dummy_text1, dummy_text2: @dummy_model.dummy_text2, dummy_text3: @dummy_model.dummy_text3 } }
    assert_redirected_to dummy_model_url(@dummy_model)
  end

  test "should destroy dummy_model" do
    assert_difference('DummyModel.count', -1) do
      delete dummy_model_url(@dummy_model)
    end

    assert_redirected_to dummy_models_url
  end
end
