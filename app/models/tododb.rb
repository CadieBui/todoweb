# frozen_string_literal: true

class Tododb < ApplicationRecord
  enum :status, %i[pending inprogress completed]
  enum :priority, %i[high medium low]
  enum :label, %i[work personal family study bill]
end
