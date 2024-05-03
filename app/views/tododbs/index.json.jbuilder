# frozen_string_literal: true

json.array! @tododbs, partial: 'tododbs/tododb', as: :tododb
