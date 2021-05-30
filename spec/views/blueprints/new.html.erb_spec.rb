# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'blueprints/new', type: :view do
  before do
    assign(:blueprint, Blueprint.new(
                         name: 'MyString',
                         description: 'MyString'
                       ))
  end

  it 'renders new blueprint form' do
    render

    assert_select 'form[action=?][method=?]', blueprints_path, 'post' do
      assert_select 'input[name=?]', 'blueprint[name]'

      assert_select 'input[name=?]', 'blueprint[description]'
    end
  end
end
