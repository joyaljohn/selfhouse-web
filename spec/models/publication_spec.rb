# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Publication, type: :model do
  describe '#create' do
    context 'with all params' do
      it 'should save and return true' do
        cat = build(:publication_category)
        subcat = build(:publication_sub_category, publication_category: cat)
        user = User.new(attributes_for(:user))
        user.skip_confirmation!
        user.save!
        pub = build(:publication, publication_sub_category: subcat, user: user)
        pub.file.attach(io: File.open(Rails.root.join('lib', 'assets', 'dummy.pdf')), filename: 'dummy.pdf', content_type: 'application/pdf')
        expect(pub.save).to eq(true)
      end
    end

    context 'missing categories params' do
      it 'should not save and return false' do
        user = build(:user)
        pub = build(:publication, publication_sub_category: nil, user: user)
        pub.file.attach(io: File.open(Rails.root.join('lib', 'assets', 'dummy.pdf')), filename: 'dummy.pdf', content_type: 'application/pdf')
        user = User.new(attributes_for(:user))
        user.skip_confirmation!
        user.save!
        expect(pub.save).to eq(false)
      end
    end

    context 'missing user params' do
      it 'should not save and return false' do
        cat = build(:publication_category)
        subcat = build(:publication_sub_category, publication_category: cat)
        user = User.new(attributes_for(:user))
        user.skip_confirmation!
        user.save!
        pub = build(:publication, publication_sub_category: subcat, user: nil)
        pub.file.attach(io: File.open(Rails.root.join('lib', 'assets', 'dummy.pdf')), filename: 'dummy.pdf', content_type: 'application/pdf')

        expect(pub.save).to eq(false)
      end
    end

    context 'missing title params' do
      it 'should not save and return false' do
        cat = build(:publication_category)
        subcat = build(:publication_sub_category, publication_category: cat)
        user = User.new(attributes_for(:user))
        user.skip_confirmation!
        user.save!
        pub = build(:publication, title: nil, publication_sub_category: subcat, user: user)
        pub.file.attach(io: File.open(Rails.root.join('lib', 'assets', 'dummy.pdf')), filename: 'dummy.pdf', content_type: 'application/pdf')

        expect(pub.save).to eq(false)
      end
    end

    context 'missing abstract params' do
      it 'should save and return true' do
        cat = build(:publication_category)
        subcat = build(:publication_sub_category, publication_category: cat)
        user = User.new(attributes_for(:user))
        user.skip_confirmation!
        user.save!
        pub = build(:publication, abstract: nil, publication_sub_category: subcat, user: user)
        pub.file.attach(io: File.open(Rails.root.join('lib', 'assets', 'dummy.pdf')), filename: 'dummy.pdf', content_type: 'application/pdf')

        expect(pub.save).to eq(true)
      end
    end

    context 'missing PDF file' do
      it 'should not save and return false' do
        cat = build(:publication_category)
        subcat = build(:publication_sub_category, publication_category: cat)
        user = User.new(attributes_for(:user))
        user.skip_confirmation!
        user.save!
        pub = build(:publication, abstract: nil, publication_sub_category: subcat, user: user)

        expect(pub.save).to eq(false)
      end
    end
  end
end
