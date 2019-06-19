require 'rails_helper'

RSpec.describe PublicationPolicy, type: :policy do

  subject { described_class.new(build(:user), attributes_for(:publication, user: build(:user), publication_sub_category: build(:publication_sub_category, publication_category: build(:publication_category))))}

  context "visitor (unauthenticated user)" do
    before(:each) do
      pcat = build(:publication_category)
      subcat = build(:publication_sub_category, publication_category: pcat)
      @user = build(:user)
      @pub = build(:publication, publication_sub_category: subcat, user: user)
    end

    let (:user) { nil }
    let (:publication) { @pub }

    #it { is_expected.to permit_action(:index) }
    #it { is_expected.to permit_action(:show) }
    it { is_expected.to forbid_action(:edit) }
    it { is_expected.to forbid_action(:update) }
    it { is_expected.to forbid_action(:destroy) }
  end
end
