# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'blueprints/index', type: :view do
  before do
    assign(:blueprints, [
             Blueprint.create!(
               name: 'Name',
               description: 'Description'
             ),
             Blueprint.create!(
               name: 'Name',
               description: 'Description'
             )
           ])
  end

  it 'renders a list of blueprints' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
  end
end
