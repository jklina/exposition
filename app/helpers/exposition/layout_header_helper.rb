module Exposition
  module LayoutHeaderHelper
    def title(title)
      content_for(:title, title.to_s)
    end

    def page_description(description)
      content_for(:page_description, description.to_s)
    end
  end
end
