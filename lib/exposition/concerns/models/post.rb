module Exposition
  module Concerns
    module Models
      module Post
        extend ActiveSupport::Concern
        include HumanUrls::Sluggable
        include Categorical::Taggable

        included do
          belongs_to :author, class_name: 'User'

          validates_presence_of :title, :body, :author
          validates_length_of :title, maximum: 244

          before_save :set_published_at_date

          sluggify :slug, generated_from: :title
        end

        class_methods do
          def published
            where(published: true)
          end

          def sorted_by_published_date
            order(published_at: :desc)
          end
        end

        def css_classes
          if published?
            return "published"
          else
            return "not-published"
          end
        end

        def summary
          read_attribute(:summary) || body
        end

        private

        def set_published_at_date
          if published_changed?(from: false, to: true)
            self.published_at = Date.today
          end
        end
      end
    end
  end
end
