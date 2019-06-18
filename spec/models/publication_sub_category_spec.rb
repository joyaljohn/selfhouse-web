require 'rails_helper'

RSpec.describe PublicationSubCategory, type: :model do
  describe "#create" do

    context "with all params" do
      it "should save and return true" do
        cat = build(:publication_category)
        subcat = PublicationSubCategory.new(attributes_for(:publication_sub_category, publication_category: cat))

        expect(subcat.save).to eq(true)
      end
    end

    context "missing parent category" do
      it "should not save and return false" do
        subcat = PublicationSubCategory.new(attributes_for(:publication_sub_category, publication_category: nil))

        expect(subcat.save).to eq(false)
      end
    end

    context "missing name" do
      it "should not save and return false" do
        subcat = PublicationSubCategory.new(attributes_for(:publication_sub_category, name: nil))

        expect(subcat.save).to eq(false)
      end
    end

  end
end
