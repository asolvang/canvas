# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'blueprints/show', type: :view do
  before do
    @blueprint = assign(:blueprint, Blueprint.create!(
                                      name: 'Name',
                                      description: 'Description'
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
