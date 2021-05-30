# frozen_string_literal: true

class Blueprint < ApplicationRecord
  has_many :rooms, dependent: :destroy
end
