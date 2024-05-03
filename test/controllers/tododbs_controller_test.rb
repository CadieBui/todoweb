# frozen_string_literal: true

require 'test_helper'

class TododbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tododb = tododbs(:one)
  end

  test 'should get index' do
    get tododbs_url
    assert_response :success
  end

  test 'should get new' do
    get new_tododb_url
    assert_response :success
  end

  test 'should create tododb' do
    assert_difference('Tododb.count') do
      post tododbs_url,
           params: { tododb: { content: @tododb.content, endDate: @tododb.endDate, label: @tododb.label,
                               priority: @tododb.priority, startDate: @tododb.startDate, status: @tododb.status, title: @tododb.title } }
    end

    assert_redirected_to tododb_url(Tododb.last)
  end

  test 'should show tododb' do
    get tododb_url(@tododb)
    assert_response :success
  end

  test 'should get edit' do
    get edit_tododb_url(@tododb)
    assert_response :success
  end

  test 'should update tododb' do
    patch tododb_url(@tododb),
          params: { tododb: { content: @tododb.content, endDate: @tododb.endDate, label: @tododb.label,
                              priority: @tododb.priority, startDate: @tododb.startDate, status: @tododb.status, title: @tododb.title } }
    assert_redirected_to tododb_url(@tododb)
  end

  test 'should destroy tododb' do
    assert_difference('Tododb.count', -1) do
      delete tododb_url(@tododb)
    end

    assert_redirected_to tododbs_url
  end
end
