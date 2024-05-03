# frozen_string_literal: true

class CreateTododbs < ActiveRecord::Migration[7.0]
  def change
    create_table :tododbs do |t|
      t.string :title
      t.text :content
      t.integer :priority
      t.integer :status
      t.datetime :startDate
      t.datetime :endDate
      t.integer :label

      t.timestamps
    end
  end
end
