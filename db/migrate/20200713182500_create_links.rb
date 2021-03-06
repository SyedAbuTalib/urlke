# frozen_string_literal: true

class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :short_link
      t.string :full_link

      t.timestamps
    end
  end
end
