# frozen_string_literal: true

require 'test_helper'

class TododbTest < ActiveSupport::TestCase
  test 'should save todolist' do
    tododb = create(:tododb)
    assert true, tododb.save
  end
  test 'title should be present' do
    tododb = create(:tododb, title: nil)
    tododb.valid?
    assert_not_empty tododb.errors[:title]
  end
end
