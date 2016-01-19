module Exposition
  class Post < ActiveRecord::Base
    include HumanUrls::Sluggable
    include Categorical::Taggable
    belongs_to :author, class_name: 'User'

    validates_presence_of :title, :body, :author
    validates_length_of :title, maximum: 244

    before_save :set_published_at_date

    sluggify :slug, generated_from: :title

    def css_classes
      if published?
        return "published"
      else
        return "not-published"
      end
    end

    def self.published
      where(published: true)
    end

    def self.sorted_by_published_date
      order(published_at: :desc)
    end

    private

    def set_published_at_date
      if published_changed?(from: false, to: true)
        self.published_at = Date.today
      end
    end
  end
end
