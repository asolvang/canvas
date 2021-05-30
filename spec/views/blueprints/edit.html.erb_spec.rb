# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'blueprints/edit', type: :view do
  before do
    @blueprint = assign(:blueprint, Blueprint.create!(
                                      name: 'MyString',
                                      description: 'MyString'
                                    ))
  end

  it 'renders the edit blueprint form' do
    render

    assert_select 'form[action=?][method=?]', blueprint_path(@blueprint), 'post' do
      assert_select 'input[name=?]', 'blueprint[name]'

      assert_select 'input[name=?]', 'blueprint[description]'
    end
  end
end
