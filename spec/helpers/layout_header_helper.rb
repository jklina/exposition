require 'rails_helper'

RSpec.describe Exposition::LayoutHeaderHelper, type: :helper do
  describe "#title" do
    it "stores the given string for use in templates content_for blocks" do
      helper.title('my great title')
      expect(helper.content_for(:title)).to eq('my great title')
    end
  end

  describe "#page_description" do
    it "stores the given string for use in templates content_for blocks" do
      helper.page_description('my great description')
      expect(helper.content_for(:page_description)).
        to eq('my great description')
    end
  end
end
