require 'rails_helper'

RSpec.describe Publication, type: :model do
  describe "#create" do
    context "with all params" do
      it "should save and return true" do
        cat = build(:publication_category)
        subcat = build(:publication_sub_category, publication_category: cat)
        user = build(:user)
        pub = build(:publication, publication_sub_category: subcat, user: user)
        
        expect(pub.save).to eq(true)
      end
    end
  end
end
