# frozen_string_literal: true

class Room < ApplicationRecord
  belongs_to :blueprint

  after_create_commit -> { broadcast_append_to blueprint }
end
