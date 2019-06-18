# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    context 'with all valid params' do
      it 'should save and return true' do
        user = User.new(attributes_for(:user))
        expect(user.save).to eq(true)
      end
    end

    context 'missing first name parameter' do
      it 'should not save and return false' do
        user = User.new(attributes_for(:user, first_name: nil))
        expect(user.save).to eq(false)
      end
    end

    context 'missing last name parameter' do
      it 'should not save and return false' do
        user = User.new(attributes_for(:user, last_name: nil))
        expect(user.save).to eq(false)
      end
    end

    context 'missing email parameter' do
      it 'should not save and return false' do
        user = User.new(attributes_for(:user, email: nil))
        expect(user.save).to eq(false)
      end
    end
  end
end
