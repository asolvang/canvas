# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rooms/new', type: :view do
  before do
    assign(:room, Room.new(
                    name: 'MyString',
                    description: 'MyString',
                    room_number: '',
                    blueprint: nil
                  ))
  end

  it 'renders new room form' do
    render

    assert_select 'form[action=?][method=?]', rooms_path, 'post' do
      assert_select 'input[name=?]', 'room[name]'

      assert_select 'input[name=?]', 'room[description]'

      assert_select 'input[name=?]', 'room[room_number]'

      assert_select 'input[name=?]', 'room[blueprint_id]'
    end
  end
end
