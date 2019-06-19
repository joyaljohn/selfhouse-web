require 'rails_helper'

RSpec.describe PublicationCategory, type: :model do
  describe "#create" do
    context "with all valid params" do
      it "should save and return true" do
        cat = PublicationCategory.new(attributes_for(:publication_category))
        expect(cat.save).to eq(true)
      end
    end


    context "missing params" do
      it "should not save and return false" do
        cat = PublicationCategory.new(attributes_for(:publication_category, name: nil))
        expect(cat.save).to eq(false)
      end
    end
  end
end
