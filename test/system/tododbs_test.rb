# frozen_string_literal: true

require 'application_system_test_case'

class TododbsTest < ApplicationSystemTestCase
  setup do
    @tododb = tododbs(:one)
  end

  test 'visiting the index' do
    visit tododbs_url
    assert_selector 'h1', text: 'Tododbs'
  end

  test 'should create tododb' do
    visit tododbs_url
    click_on 'New tododb'

    fill_in 'Content', with: @tododb.content
    fill_in 'Enddate', with: @tododb.endDate
    fill_in 'Label', with: @tododb.label
    fill_in 'Priority', with: @tododb.priority
    fill_in 'Startdate', with: @tododb.startDate
    fill_in 'Status', with: @tododb.status
    fill_in 'Title', with: @tododb.title
    click_on 'Create Tododb'

    assert_text 'Tododb was successfully created'
    click_on 'Back'
  end

  test 'should update Tododb' do
    visit tododb_url(@tododb)
    click_on 'Edit this tododb', match: :first

    fill_in 'Content', with: @tododb.content
    fill_in 'Enddate', with: @tododb.endDate
    fill_in 'Label', with: @tododb.label
    fill_in 'Priority', with: @tododb.priority
    fill_in 'Startdate', with: @tododb.startDate
    fill_in 'Status', with: @tododb.status
    fill_in 'Title', with: @tododb.title
    click_on 'Update Tododb'

    assert_text 'Tododb was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Tododb' do
    visit tododb_url(@tododb)
    click_on 'Destroy this tododb', match: :first

    assert_text 'Tododb was successfully destroyed'
  end
end
