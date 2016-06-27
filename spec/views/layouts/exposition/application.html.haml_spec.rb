require 'rails_helper'

RSpec.describe "layouts/exposition/application.html.haml", type: :view do
  describe "title behavior" do
    it "displays the default title if none are provided" do
      render

      expect(rendered).to include(t('title'))
    end

    it "displays a provided title if given" do
      view.content_for(:title, 'my awesome title')

      render

      expect(rendered).to include('my awesome title')
    end
  end

  describe "page description behavior" do
    it "displays the default description if none are provided" do
      render

      expect(rendered).to include(t('page_description'))
    end

    it "displays a provided description if given" do
      view.content_for(:page_description, 'my awesome description')

      render

      expect(rendered).to include('my awesome description')
    end
  end
end
